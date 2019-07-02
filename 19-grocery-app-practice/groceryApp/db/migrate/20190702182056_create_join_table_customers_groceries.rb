class CreateJoinTableCustomersGroceries < ActiveRecord::Migration[5.2]
  def change
    create_join_table :customers, :groceries do |t|
      # t.index [:customer_id, :grocery_id]
      # t.index [:grocery_id, :customer_id]
    end
  end
end
