class CreateTeamQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :team_quests do |t|
      t.string :answer_input
      t.references :team_id, foreign_key: true
      t.references :quest_id, foreign_key: true
      t.boolean :answer_correct
      t.integer :points_record

      t.timestamps
    end
  end
end
