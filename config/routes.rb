Rails.application.routes.draw do
  resources :contacts do
    resources :addresses
  end

  resources :states
  resources :countries
end
