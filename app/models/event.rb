class Event < ApplicationRecord
	has_many :rsvps, dependent: :destroy
end
