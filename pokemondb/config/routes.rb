# frozen_string_literal: true

# nodoc
Rails.application.routes.draw do
  root 'pokemon#index'
  resources :pokemon
  resources :searches
end
