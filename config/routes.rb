Rails.application.routes.draw do
root 'list#index'

  resources :lists do
    resources :activities 
  end
  resources :destinations
end
