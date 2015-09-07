class AddFileToBugs < ActiveRecord::Migration
  def change
  	add_column :bugs, :filepicker_url, :string
  end
end
