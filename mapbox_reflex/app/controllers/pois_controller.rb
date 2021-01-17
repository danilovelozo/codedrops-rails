# frozen_string_literal: true

# nodoc
class PoisController < ApplicationController
  def index
    @pois = Poi.geocoded
  end

  def create
    @poi.create(poi_params)
    redirect_to pois_path
  end

  private

  def poi_params
    params.require(:poi).permit(:name, :address, :latitude, :longitude)
  end
end
