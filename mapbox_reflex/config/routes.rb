# frozen_string_literal: true

# nodoc
Rails.application.routes.draw do
  root 'pois#index'
  resources :pois
end
