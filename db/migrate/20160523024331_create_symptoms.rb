class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.date :date
      t.boolean :none
      t.string :child_id
      t.string :other
      t.boolean :diahrrea
      t.boolean :fever
      t.boolean :cough

      t.timestamps

    end
  end
end
