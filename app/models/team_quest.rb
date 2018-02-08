class TeamQuest < ApplicationRecord
  validates :team_id, uniqueness: {scope: :quest_id}
  {message: " works?" }
  belongs_to :team
  belongs_to :quest
end
