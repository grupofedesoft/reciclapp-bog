class TblBarriosController < ApplicationController
  before_action :set_tbl_barrio, only: [:show, :update, :destroy]

  # GET /tbl_barrios
  def index
    @tbl_barrios = TblBarrio.all

    render json: @tbl_barrios
  end

  # GET /tbl_barrios/1
  def show
    render json: @tbl_barrio
  end

  # POST /tbl_barrios
  def create
    @tbl_barrio = TblBarrio.new(tbl_barrio_params)

    if @tbl_barrio.save
      render json: @tbl_barrio, status: :created, location: @tbl_barrio
    else
      render json: @tbl_barrio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_barrios/1
  def update
    if @tbl_barrio.update(tbl_barrio_params)
      render json: @tbl_barrio
    else
      render json: @tbl_barrio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_barrios/1
  def destroy
    @tbl_barrio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_barrio
      @tbl_barrio = TblBarrio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_barrio_params
      params.require(:tbl_barrio).permit(:Nombre, :Estado, :Upz)
    end
end
