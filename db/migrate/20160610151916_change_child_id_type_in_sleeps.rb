class ChangeChildIdTypeInSleeps < ActiveRecord::Migration
  def self.up
    change_column :sleeps, :child_id, :integer
  end

  def self.down
    change_column :sleeps, :child_id, :date
  end
end
