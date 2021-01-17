# frozen_string_literal: true

# nodoc
Rails.application.routes.draw do
  root to: 'home#index'

  get 'basic-qr-code-reader', to: 'basic_qr_codes#index'

  resources :qr_codes, only: %i[index new create show]
end
