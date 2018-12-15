class TodoItemsController < ApplicationController
  before_action :get_todo_list, only: [:create :destroy]

  def create
    @todo_item = @todo_list.todo_items.create(params[:todo_item].permit(:content))
    # we are creating a todo_item under a todo_list because a todo_item cannot exist without a todo_list
    # todo_items table belongs to todo_list, so to get to the todo_items, we have to get it from the todo_list

    # under the :todo_item permit the context
    redirect_to @todo_list
  end

  def destroy

  end

private

def get_todo_list
  @todo_list = TodoList.find(params[:todo_list_id])
  # this will find the todo_list element that has that specific id
end

end
