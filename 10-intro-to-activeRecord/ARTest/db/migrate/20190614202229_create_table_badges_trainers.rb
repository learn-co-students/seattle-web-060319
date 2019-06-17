class CreateTableBadgesTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :badges_trainers do |t|
      t.integer :badge_id
      t.integer :trainer_id
    end
  end
end
