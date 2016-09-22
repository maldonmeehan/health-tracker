Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'entries#index'

  resources :entries do
    resources :activities
  end

  resources :entries do
    resources :foods
  end
  
end
