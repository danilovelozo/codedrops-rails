class ArmorsController < ApplicationController
  def destroy
    @armor = Armor.find(params[:id])
    @armor.destroy
    redirect_to armors_path
  end
end
