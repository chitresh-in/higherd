Rails.application.routes.draw do



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
