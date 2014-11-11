require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do 

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :posts, only: [:create]
  resources :categories, only: [:new, :create]  
  resources :geographic, only: [:new, :create]  

  constraints Monban::Constraints::SignedIn.new do
    root "users#show", as: :home
  end

  constraints Monban::Constraints::SignedOut.new do
    root "sessions#new"
  end
end 
