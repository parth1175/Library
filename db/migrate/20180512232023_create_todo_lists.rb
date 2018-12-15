class CreateTodoLists < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.text :description

# basically the name of the model is todo_list

# AKA, each entry in the table is a todo_list

      t.timestamps
    end
  end
end
