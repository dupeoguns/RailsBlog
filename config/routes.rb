Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end
  resources :users, except: [:new]

  root "posts#index"
  get 'signup', to: 'users#new'

end
