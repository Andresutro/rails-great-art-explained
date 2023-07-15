
# Tours::IcalendarEvent.new(tour: Tour.first).call
class Tours::IcalendarEvent
  require 'icalendar'
  include Rails.application.routes.url_helpers # incluye métodos de ayuda de ruta

  def initialize(tour:)
    @tour = tour
  end

  def call
    # Create a calendar with an event (standard method)
    cal = Icalendar::Calendar.new
    cal.event do |e|
      e.dtstart     = @tour.start_date
      e.dtend       = @tour.end_date
      e.summary     = @tour.title
      e.description = @tour.description
      e.ip_class    = "PRIVATE"
      e.location = @tour.address
      e.uid = @tour.id.to_s
      e.sequence = Time.now.to_i
      e.url = "http://localhost:3000/tours/#{@tour.id}"
    end

    # Publish the calendar
    cal.publish
    cal.to_ical
  end


end
