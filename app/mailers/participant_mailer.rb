class ParticipantMailer < ApplicationMailer

  def invite
    @participant = params[:participant]
    @greeting = "Hi"

    calendar_event = Participants::IcalendarEvent.new(participant: @participant).call
    attachments['invite.ics'] = calendar_event
    mail to: "andresmarchantsoto@gmail.com",
          from: 'Yaro from Superails <admin@superails.com>',
          subject: "Invitation to a tour"
  end
end
