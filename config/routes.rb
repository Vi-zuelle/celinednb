Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :celineversions do
    resources :bookings, only: [:show, :new, :create]
  end
  resources :bookings, only: [:index, :update]
  resources :my_celineversions, only: [:index]
end

