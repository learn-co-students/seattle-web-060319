class CreateFries < ActiveRecord::Migration[5.2]
  def change
    create_table :fries do |t|
      t.boolean :curly
      t.boolean :sweet_potatoe
      t.boolean :waffle
      t.integer :calories

      t.timestamps
    end
  end
end
