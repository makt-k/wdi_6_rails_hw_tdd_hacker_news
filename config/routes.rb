HackerNews::Application.routes.draw do
  devise_for :users
  resources :submissions do
    resources :votes, defaults: {votable: 'submission'}
    resources :comments do
      resources :votes, defaults: {votable: 'comment'}
    end
  end
  root to: "submissions#index"
end
