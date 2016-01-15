class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :email
      t.boolean :activated
      t.string :activation_token
      t.references :currency
      t.float :value
      t.string :change_direction
      t.boolean :watched

      t.timestamps null: false
    end
  end
end
