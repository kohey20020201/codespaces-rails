Rails.application.routes.draw do
  root "tasks#index"

  get "/tasks/new", to:"tasks#new"
  post "/tasks/create", to:"tasks#create"

  get "/tasks/:id", to:"tasks#edit"

  delete "/tasks/:id", to: "tasks#destroy"
  patch "/tasks/:id", to: "tasks#update"
end
