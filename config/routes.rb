Rails.application.routes.draw do
  root "todo_lists#index"

  resources :todo_lists, only: [:index, :new, :create, :show, :destroy]
end
