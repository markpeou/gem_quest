class TeamQuest < ApplicationRecord
  belongs_to :team_id
  belongs_to :quest_id
end
