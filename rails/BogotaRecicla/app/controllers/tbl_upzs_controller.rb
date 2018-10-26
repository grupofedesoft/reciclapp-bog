class TblUpzsController < ApplicationController
  before_action :set_tbl_upz, only: [:show, :update, :destroy]

  # GET /tbl_upzs
  def index
    @tbl_upzs = TblUpz.all

    render json: @tbl_upzs
  end

  # GET /tbl_upzs/1
  def show
    render json: @tbl_upz
  end

  # POST /tbl_upzs
  def create
    @tbl_upz = TblUpz.new(tbl_upz_params)

    if @tbl_upz.save
      render json: @tbl_upz, status: :created, location: @tbl_upz
    else
      render json: @tbl_upz.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_upzs/1
  def update
    if @tbl_upz.update(tbl_upz_params)
      render json: @tbl_upz
    else
      render json: @tbl_upz.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_upzs/1
  def destroy
    @tbl_upz.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_upz
      @tbl_upz = TblUpz.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_upz_params
      params.require(:tbl_upz).permit(:Nombre, :Estado, :Localidad)
    end
end
