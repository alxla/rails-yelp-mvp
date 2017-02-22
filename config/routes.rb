Rails.application.routes.draw do

  # Routes for Restaurant
  resources :restaurants, only: [ :new, :create, :index, :show ] do
    resources :reviews, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
