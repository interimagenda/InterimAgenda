Rails.application.routes.draw do

  root 'employers#index'

  get 'employers/index' => 'employers#index'
  get 'employers/:id' => 'employers#show', as: :employer

  get 'freelancers/index' => 'freelancers#index'
  get 'freelancers/:id' => 'employers#show', as: :freelancer

  get 'jobs/index' => 'jobs#index'
  get 'jobs/:id' => 'jobs#index', as: :job

end
