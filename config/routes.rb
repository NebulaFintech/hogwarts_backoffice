Rails.application.routes.draw do
  resources :houses, only: [:index] do
    member do
      get :apply
    end
  end
  resources :school_applications, only: [:index, :show] do
    member do
      get :approve
      get :deny
    end
  end
  
  root 'houses#index'
  devise_for :wizards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
