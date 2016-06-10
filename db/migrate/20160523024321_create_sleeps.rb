class CreateSleeps < ActiveRecord::Migration
  def change
    create_table :sleeps do |t|
      t.string :child_id
      t.date :date
      t.integer :naps
      t.integer :wake_ups
      t.float :day_sleep
      t.float :night_sleep

      t.timestamps

    end
  end
end
