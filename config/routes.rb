Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    #nested resource for reviews, which dog houses have many of
    resources :reviews, only: [:show, :index] #will need to def these route methods in reviews_controller
  end
  resources :reviews, only: [:show, :index, :create]
end
