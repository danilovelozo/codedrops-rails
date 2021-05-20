class Api::V1::MembersController < ApplicationController
  before_action :set_members, only: %i[show update destroy]

  # GET /memberss
  def index
    @members = Member.all

    render json: @members
  end

  # GET /memberss/1
  def show
    render json: @member
  end

  # POST /memberss
  def create
    @members = Member.new(members_params)

    if @members.save
      render json: @members, status: :created, location: @members
    else
      render json: @members.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /memberss/1
  def update
    if @members.update(members_params)
      render json: @members
    else
      render json: @members.errors, status: :unprocessable_entity
    end
  end

  # DELETE /memberss/1
  def destroy
    @members.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_members
    @members = Member.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def members_params
    params.require(:members).permit(:name)
  end
end
