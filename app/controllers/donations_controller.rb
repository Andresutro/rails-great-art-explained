class DonationsController < ApplicationController
  before_action :set_user
  before_action :set_donation, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:show, :index, :create]
 # app/controllers/donations_controller.rb
  def index
    @user = User.find(params[:user_id])
    @donations = policy_scope(Donation.where(user_id: @user.id))


  end

  def create
  @current_user = current_user
  @donation = @current_user.donations.build(donation_params)
  authorize @donation
  if @donation.save
    redirect_to user_donations_path(@user), notice: 'Gracias por tu donación!'
  else
    render :new, status: :unprocessable_entity
  end
  end

  private

  def set_user
  @user = User.find(params[:user_id])
  end

  def donation_params
  params.require(:donation).permit(:amount, :message)
  end
end
