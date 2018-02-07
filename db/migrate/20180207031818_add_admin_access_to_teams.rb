class AddAdminAccessToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :admin_access, :boolean
  end
end
