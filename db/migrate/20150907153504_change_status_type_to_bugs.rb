class ChangeStatusTypeToBugs < ActiveRecord::Migration
  def change
  	change_column :bugs, :status, :integer, :default => 0
  end
end
