Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    resource :bookings, only: [:create] 
    resources :favorited_venues, only: [:create, :destroy]
  end

  resources :bookings, only: [:index, :edit, :show]
  resources :favorited_venues, only: [:index]
end
