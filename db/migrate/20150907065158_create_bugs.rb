class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :body
      t.integer :status

      t.timestamps null: false
    end
  end
end
