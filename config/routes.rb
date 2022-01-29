# frozen_string_literal: true

Rails.application.routes.draw do
  resources :collections
  resources :items
  root "landing#index"
  devise_for :users
end
