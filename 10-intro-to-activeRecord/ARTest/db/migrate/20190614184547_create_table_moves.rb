class CreateTableMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.string :name
      t.string :kind
      t.integer :damage
    end
  end
end
