# frozen_string_literal: true

module Api
  module V1
    # nodoc
    class JokesController < ApplicationController
      def index
        @jokes = Joke.all
      end

      def show
        @joke.find(params[:id])
      end
    end
  end
end
