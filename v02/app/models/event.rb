class Event < ApplicationRecord
  belongs_to :organizer
  has_many :sessions
end
