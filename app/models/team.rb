class Team < ApplicationRecord
  has_secure_password
  has_many :team_quests
  has_many :quests, through: :team_quests
end
