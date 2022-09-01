Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # add a summary action to our controller (movies_controller)
  get "movies/:id/summary", to: "movies#summary"
  # render the full collection of movies, create another route and action
  get "/movie_summaries", to: "movies#summary"
end
