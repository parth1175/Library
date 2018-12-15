Rails.application.routes.draw do

  resources :todo_lists do
    resources :todo_items
  end

  # we want nested todo_items, because if there is no todo_list, then there should not be any todo_items

  # since the routes are nested, you have to access the todo_lists routes, to get to the todo_items pages

  # the routes for the to_do items will be nested roots under todo_lists
  # ruby doesnt have {} so instead you use "do" and "end"

  root "todo_lists#index"
  # This will set the root page, or the main page to be the index page
  # When you open the page, it has to go to a certain page in the site, but this set s a default page.
end
