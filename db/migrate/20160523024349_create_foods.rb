class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.date :date
      t.string :child_id
      t.integer :fat
      t.integer :dairy
      t.integer :protein
      t.integer :vegetable
      t.integer :fruit
      t.integer :grain

      t.timestamps

    end
  end
end
