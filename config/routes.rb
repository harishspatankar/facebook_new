Rails.application.routes.draw do
  root 'welcome#index'
  resources :users do
    resources :addresses
    resources :posts
  end
  get 'users/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
