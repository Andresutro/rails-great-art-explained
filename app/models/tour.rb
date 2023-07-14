
class Tour < ApplicationRecord
  belongs_to :user
  has_many :participants, dependent: :destroy



  def maximum?
    self.participants.count < self.capacity
  end
  # require 'icalendar'
  # include Rails.application.routes.url_helpers # incluye métodos de ayuda de ruta

  # def to_icalendar
  #   # Create a calendar with an event (standard method)
  #   cal = Icalendar::Calendar.new
  #   cal.event do |e|
  #     e.dtstart     = start_date
  #     e.dtend       = end_date
  #     e.summary     = title
  #     e.description = description
  #     e.ip_class    = "PRIVATE"
  #     e.location = address
  #     e.uid = id.to_s
  #     e.sequence = Time.now.to_i
  #     e.url = "http://localhost:3000/tours/#{self.id}"
  #   end

  #   # Publish the calendar
  #   cal.publish
  #   cal.to_ical
  # end
end
