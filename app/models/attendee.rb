class Attendee < ActiveRecord::Base
  validates :name, presence: true
end
