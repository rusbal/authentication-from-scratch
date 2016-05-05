Rails.application.routes.draw do

  # root 'posts#index'

  get 'log_in'  => 'sessions#new',     as: "log_in"
  get 'log_out' => 'sessions#destroy', as: "log_out"
  resources :sessions
  
  root 'users#new'
  get 'sign_up' => 'users#new', as: "sign_up"
  resources :users

  resources :posts do
  end

  get 'about', to: 'static#about'

end
