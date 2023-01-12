Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :languages, only: [:index, :show, :create]

  resources :votes, only: [:index, :show]

end
