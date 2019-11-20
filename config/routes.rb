Rails.application.routes.draw do
  resources :jobs, only: [:index, :show, :new, :create] do
  end
  # get 'jobs', to: 'jobs#index'
  # get 'jobs/new', to: 'jobs#new'
  # post 'jobs', to: 'jobs#create'
  # get 'jobs/:id', to: 'jobs#show'
end
