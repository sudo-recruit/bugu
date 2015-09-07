class AddAllReferenceToTable < ActiveRecord::Migration
  def change
    add_reference :bugs, :user, index: true
    add_reference :comments, :bug, index: true
    add_reference :comments, :user, index: true
  end
end
