Rails.application.routes.draw do
  root to: 'home#index'
  get '/perform_action' => 'home#perform_action', as: :perform_action

  require 'split/dashboard'

  mount Split::Dashboard, at: 'split'
end
