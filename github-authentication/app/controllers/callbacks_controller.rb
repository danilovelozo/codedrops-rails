# frozen_string_literal: true

# nodoc
class CallbacksController < Devise::OmniauthCallbacksController
  @user = User.from_omniauth(request.env['omniauth.auth'])
  sign_in_and_redirect @user
end
