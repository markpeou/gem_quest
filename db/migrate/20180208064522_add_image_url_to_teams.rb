class AddImageUrlToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :image_url, :text
  end
end
