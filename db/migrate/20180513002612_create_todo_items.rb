class CreateTodoItems < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_items do |t|
      t.string :content
      t.references :todo_list, foriegn_key: true
=begin
      since we have the references line, we dont need to say it is a foriegn_key. It should automatically do it
      foreign_key: true   this just enforce that this is a foriegn key....
=end


# each todo_list consists of another table which is a table of todo_items

# a model is what each entry in the table is

      t.timestamps

=begin **********************

Each entry in this table will have:
 - a string for content
 - a reference to the :todo_list, which joins it as a part of todo_list.
=end
    end
  end
end
