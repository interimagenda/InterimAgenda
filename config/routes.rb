Rails.application.routes.draw do
  devise_for :users

  resources :employers
  resources :freelancers
  resources :jobs

  root 'landing#index'

end
