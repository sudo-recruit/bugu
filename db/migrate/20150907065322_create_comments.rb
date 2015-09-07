class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :change_status

      t.timestamps null: false
    end
  end
end
