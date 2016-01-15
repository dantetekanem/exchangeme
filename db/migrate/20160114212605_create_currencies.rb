class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :code
      t.string :base
      t.float :value

      t.timestamps null: false
    end
  end
end
