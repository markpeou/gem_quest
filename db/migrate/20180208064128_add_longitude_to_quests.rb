class AddLongitudeToQuests < ActiveRecord::Migration[5.1]
  def change
    add_column :quests, :longitude, :float
  end
end
