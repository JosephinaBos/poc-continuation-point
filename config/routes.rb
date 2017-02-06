Rails.application.routes.draw do

  get 'users/update'

  get 'users/destroy'

  resources :users, only: [:update, :edit, :destroy] do
    resources :profile, only: [:index, :show, :edit, :update]
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
