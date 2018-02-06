class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.text :instructions
      t.string :answer
      t.references :location_id, foreign_key: true
      t.integer :point_value

      t.timestamps
    end
  end
end
