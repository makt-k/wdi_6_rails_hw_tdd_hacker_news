HackerNews::Application.routes.draw do
  devise_for :users
  resources :submissions
  root to: "submissions#index"
end
