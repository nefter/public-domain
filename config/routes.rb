# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root "landing#index"

  # GET / about
  get "about", to: "about#index"
end
