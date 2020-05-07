Rails.application.routes.draw do

 get 'user/job_application/index', to: 'user/job_application#index', as: 'job_applications'
  post 'user/job_application/apply/:opening_id/', to: 'user/job_application#create', as: 'job_application'
  

  namespace :user do
    get 'job_application/index'
  end
  resources :openings
  namespace :employer do
    get 'home/index'
  end
  devise_for :employers
  namespace :user do
    get 'home/index'
  end

  devise_for :users, controllers: { omniauth_callbacks: 'user/omniauth' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
