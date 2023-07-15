class ParticipantsController < ApplicationController
  before_action :set_tour, only: %i[ create ]
  # raise
def create
    @participant = Participant.new
    @participant.tour = @tour
    @participant.user = current_user

    respond_to do |format|
      if @participant.save
        # invite(@participant)
        format.html { redirect_to tour_url(@participant.tour), notice: "Your participantion in the Tour was successfully created." }
        format.json { render :show, status: :created, location: @participant.tour }
        format.ics do
          participant_ics = Participants::IcalendarEvent.new(participant: @participant).call
          send_data participant_ics, filename: "#{@participant.tour.title}.ics", disposition: 'attachment'
          # send_data participant_ics, filename: "#{@participant.tour.title}.ics", disposition: 'attachment'
        end
      else
        format.html do
          flash.now[:notice] = @participant.errors.full_messages.to_sentence
          render "tours/show", status: :unprocessable_entity
        end
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  def invite
    # binding.b
    # @participant = Participant.new
    # @participant.tour = @tour
    # @participant.user = current_user
    @participant = Participant.find(params[:tour_id])
    ParticipantMailer.with(participant: @participant).invite.deliver_now
    redirect_to @participant.tour, notice: 'Invite sent'
  end

  def index
    @participations = Participant.where(user: current_user)
  end


  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    respond_to do |format|
      format.html { redirect_to tour_url(@participant.tour), notice: "Your participantion in the Tour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Only allow a list of trusted parameters through.
  def participant_params
    params.require(:participant).permit(:tour_id)
  end

  def set_tour
    @tour = Tour.find(params[:tour_id])
  end
end
