require 'mercadopago'
class DonationsController < ApplicationController
  before_action :set_user
  before_action :set_donation, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:show, :index, :create, :received, :made]
 # app/controllers/donations_controller.rb
  def index
    @user = User.find(params[:user_id])
    @donations = policy_scope(Donation.where(@user_id))
  end

  def received
    @donations_received = current_user.received_donations.where(status: 'approved')
    authorize @donations_received
  end

  def made
    @donations_made = current_user.donations
    authorize Donation
  end

  def show
    sdk = Mercadopago::SDK.new(ENV['MERCADOPAGO_ACCESS_TOKEN'])
    preference_data = {
      items: [
        {
          title: "Donacion a #{@donation.recipient.email}",
          quantity: 1,
          currency_id: 'CLP', # o la moneda que corresponda
          unit_price: @donation.amount
        }
      ],
      back_urls: {
        success: "http://localhost:3000/users/#{@donation.user.id}/donations/#{@donation.id}",
        failure: "http://localhost:3000/users/#{@donation.user.id}/donations/#{@donation.id}",
        pending: "http://localhost:3000/users/#{@donation.user.id}/donations/#{@donation.id}"
      } # Aquí estamos pasando el id del producto como external_reference
    }
    preference_response = sdk.preference.create(preference_data)
    preference = preference_response[:response]
    @preference_id = preference['id']

    if params[:collection_status] == 'approved'
      @donation.status = 'approved'
      redirect_to made_user_donations_path(current_user)
    end



  end

  def create
    @donation = Donation.new
    @donation.user = current_user
    @donation.amount = donation_params[:amount]
    @donation.message = donation_params[:message]
    @donation.recipient_id = Art.find(donation_params[:art_id]).user.id
    authorize @donation
    respond_to do |format|
      if @donation.save
        format.html { redirect_to user_donation_path(current_user, @donation), notice: "Donation was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end




  private

  def set_donation
    @donation = Donation.find(params[:id])
    authorize @donation
    return @donation
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def donation_params
    params.require(:donation).permit(:amount, :message, :art_id)
  end
end
