Rails.application.routes.draw do
  resources :contacts do
    resources :addresses
  end

  resources :states
  namespace :admin do
    resources :countries

    root 'dashboard#index'
  end

  root 'contacts#index'
end
