HackerNews::Application.routes.draw do
  devise_for :users
  resources :submissions do
      post 'upvote' => 'votes#upvote', as: 'upvote', defaults: { votable: 'submission' }
      post 'downvote' => 'votes#downvote', as: 'downvote', defaults: { votable: 'submission' }
    resources :comments do
      post 'upvote' => 'votes#upvote', as: 'upvote', defaults: { votable: 'comment' }
      post 'downvote' => 'votes#downvote', as: 'downvote', defaults: { votable: 'comment' }
    end
  end
  root to: "submissions#index"
end
