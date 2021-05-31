class HomeController < ApplicationController
  def index
    @ab_test = ab_test(:button_test, 'control', 'variant')
  end

  def perform_action
    ab_finished(:button_test, reset: false)
  end
end
