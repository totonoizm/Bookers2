Rails.application.routes.draw do
  get '/users/sign_out' => 'devise/sessions#destroy'
  root 'books#index'
  resources :books
    resources :users
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
