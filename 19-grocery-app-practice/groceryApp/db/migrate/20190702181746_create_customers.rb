class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :location
      t.integer :reward_no

      t.timestamps
    end
  end
end
