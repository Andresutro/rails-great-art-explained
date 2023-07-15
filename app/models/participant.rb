class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :tour

  validates_uniqueness_of :user_id, scope: :tour_id, message: "Ya te has unido a este tour."

  # require 'icalendar'

  # # Create a calendar with an event (standard method)
  # cal = Icalendar::Calendar.new
  # cal.event do |e|
  #   e.dtstart     = Icalendar::Values::Date.new('20050428')
  #   e.dtend       = Icalendar::Values::Date.new('20050429')
  #   e.summary     = "Meeting with the man."
  #   e.description = "Have a long lunch meeting and decide nothing..."
  #   e.ip_class    = "PRIVATE"
  # end

  # cal.publish
end
