class Rsvp < ApplicationRecord
  belongs_to :event
  validates_presence_of :name, :email
end
