class RemoveItemFromTodos < ActiveRecord::Migration
  def change
    remove_column :todos, :item
    remove_column :todos, :due
    add_column :todos, :tasks, :string
    add_column :todos, :finished, :boolean
  end
end
