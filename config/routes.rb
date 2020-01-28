Rails.application.routes.draw do 
  devise_for :users

  root to: "posts#top"
  resources :posts do 
    resources :comments, only: [:create,:new]
    collection do
      get "search"
      get "top"
    end
  end
  resources :users, only: [:edit, :update,:show]
  post   '/like/:post_id' => 'likes#like',   as: 'like'
  delete '/like/:post_id' => 'likes#unlike', as: 'unlike'
end

