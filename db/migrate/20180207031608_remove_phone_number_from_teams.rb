class RemovePhoneNumberFromTeams < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :phone_number, :integer
  end
end
