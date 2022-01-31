# frozen_string_literal: true

Rails.application.routes.draw do
  resources :collections
  resources :items
  # belongs_to :object, class_name: "object", foreign_key: "object_id"
  root "landing#index"
  devise_for :users
end
