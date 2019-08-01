class CreateBurgers < ActiveRecord::Migration[5.2]
  def change
    create_table :burgers do |t|
      t.string :name
      t.boolean :meat
      t.boolean :tasty
      t.integer :calories

      t.timestamps
    end
  end
end
