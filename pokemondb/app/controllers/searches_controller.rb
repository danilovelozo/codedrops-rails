# frozen_string_literal: true

# nodoc
class SearchesController < ApplicationController
  def show
    @search = Search.find(params[:id])
  end

  def new
    @search = Search.new
    @types = Pokemon.distinct.pluck(:type)
    @regions = Pokemon.distinct.pluck(:region)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  private

  def search_params
    params.require(:search).permit(:name, :type, :region)
  end
end
