# frozen_string_literal: true

# nodoc
Rails.application.routes.draw do
  resources :posts

  root to: 'posts#index'
end
