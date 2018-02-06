class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.text :members
      t.integer :score
      t.text :password_digest

      t.timestamps
    end
  end
end
