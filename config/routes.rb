Rails.application.routes.draw do
  devise_for :users
  get 'profile/index'

  get 'profile/show'

  get 'profile/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
