HackerNews::Application.routes.draw do
  devise_for :users
  resources :submissions
  resources :comments
  root to: "submissions#index"
end
