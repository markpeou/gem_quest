class AddLatitudeToQuests < ActiveRecord::Migration[5.1]
  def change
    add_column :quests, :latitude, :float
  end
end
