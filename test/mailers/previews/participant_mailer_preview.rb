# Preview all emails at http://localhost:3000/rails/mailers/participant_mailer
class ParticipantMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/participant_mailer/invite
  def invite
    # ParticipantMailer.with(participant: Participant.first).invite
  end

end
