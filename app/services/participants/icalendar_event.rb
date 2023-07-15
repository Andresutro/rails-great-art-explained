
# Tours::IcalendarEvent.new(tour: Tour.first).call
class Participants::IcalendarEvent
  require 'icalendar'
  include Rails.application.routes.url_helpers # incluye métodos de ayuda de ruta

  def initialize(participant:)
    @participant = participant
  end

  def call
    # Create a calendar with an event (standard method)
    cal = Icalendar::Calendar.new
    cal.event do |e|
      e.dtstart     = @participant.tour.start_date
      e.dtend       = @participant.tour.end_date
      e.summary     = @participant.tour.title
      e.description = @participant.tour.description
      e.ip_class    = "PRIVATE"
      e.location = @participant.tour.address
      e.uid = @participant.tour.id.to_s
      e.sequence = Time.now.to_i
      e.url = "http://localhost:3000/tours/#{@participant.tour.id}"
    end

    # Publish the calendar
    cal.publish
    cal.to_ical
  end


end
