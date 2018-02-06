class Quest < ApplicationRecord
  belongs_to :location
  has_many :teams
end
