Rails.application.routes.draw do

  resources :users, only: [:update, :edit, :destroy] do
    resources :profile, only: [:index, :show, :edit, :update]
  end

  devise_for :users, controllers: {registrations: 'registrations'}

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
