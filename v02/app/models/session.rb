class Session < ApplicationRecord
  belongs_to :event
  belongs_to :speaker
end
