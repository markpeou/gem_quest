class AddNameToQuests < ActiveRecord::Migration[5.1]
  def change
    add_column :quests, :name, :string
  end
end
