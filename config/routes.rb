PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  resources :categories, only: [:create, :new, :show]
  resources :posts, except: [:destroy] do
    resources :comments, only: [:create]
  end

end
