Rails.application.routes.draw do

  root "pages#index"

  resources :users

  resources :games

end
