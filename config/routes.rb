Rails.application.routes.draw do 
  
  devise_for :users
  devise_scope :user do
    get 'users/thanks' => 'users/registrations#thanks'
  end

  root to: "posts#top"
  resources :posts do 
    resources :comments, only: [:create,:new]
    collection do
      get "search"
      get "top"
      get "like"
    end
  end

  resources :users, only: [:edit, :update,:show] do
    collection do 
      get "follow"
      get "follower"
    end
  end


  post   '/like/:post_id' => 'likes#like',   as: 'like'
  delete '/like/:post_id' => 'likes#unlike', as: 'unlike'
  
  resources :relationships, only: [:create, :destroy] do 
    collection do 
      get "rank"
    end
  end

end

