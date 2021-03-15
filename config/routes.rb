# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cars
  devise_for :users
  resources :dealerships
  root to: 'dealerships#index'
end
