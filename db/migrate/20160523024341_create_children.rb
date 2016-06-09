class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :user_id
      t.string :gender
      t.date :dob
      t.string :name

      t.timestamps

    end
  end
end
