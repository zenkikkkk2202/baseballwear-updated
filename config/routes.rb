Rails.application.routes.draw do 
  devise_for :users
  # , controllers: {
  #   registrations: 'users/registrations'
  # }
  # devise_scope :user do
  #   get 'users/thanks' => 'users/registrations#thanks'
  # end

  # def devise_scope(scope)
  #   constraint = lambda do |request|
  #     request.env["devise.mapping"] = Devise.mappings[scope]
  #     true
  #   end

  #   constraints(constraint) do
  #     yield
  #   end
  # end

  root to: "posts#top"
  resources :posts do 
    resources :comments, only: :create
    collection do
      get "search"
      get "top"
    end
  end
  resources :users, only: [:edit, :update,:show]
  post   '/like/:post_id' => 'likes#like',   as: 'like'
  delete '/like/:post_id' => 'likes#unlike', as: 'unlike'
end

