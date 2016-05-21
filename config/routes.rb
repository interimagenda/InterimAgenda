Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations'}

  resources :employers
  resources :freelancers
  resources :jobs

  root 'landing#index'

end
