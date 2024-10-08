Rails.application.routes.draw do
  root "tasks#index"

  get "/tasks/new", to:"tasks#new"
  post "/tasks/create", to:"tasks#create"

  get "/tasks/:id/edit", to:"tasks#edit"

  delete "/tasks/:id", to: "tasks#destroy"
end
