Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "to_do#index"
  resources :to_do, only: [:update]
end
