class Quest < ApplicationRecord
  belongs_to :location
  has_many :teamquests
  has_many :teams, through: :teamquests
end
