Rails.application.routes.draw do
  get 'jobs', to: 'jobs#index'
  get 'jobs/new', to: 'jobs#new'
  post 'jobs', to: 'jobs#create'
  get 'jobs/:id', to: 'jobs#show'
end
