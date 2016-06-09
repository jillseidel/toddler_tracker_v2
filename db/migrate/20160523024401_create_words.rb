class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :child_id
      t.string :proficiency
      t.string :method
      t.string :word_name
      t.date :date

      t.timestamps

    end
  end
end
