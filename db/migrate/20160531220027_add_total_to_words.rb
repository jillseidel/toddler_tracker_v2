class AddTotalToWords < ActiveRecord::Migration
  def change
    add_column :words, :total, :integer
  end
end
