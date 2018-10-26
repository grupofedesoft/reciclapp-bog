class TblActividadsController < ApplicationController
  before_action :set_tbl_actividad, only: [:show, :update, :destroy]

  # GET /tbl_actividads
  def index
    @tbl_actividads = TblActividad.all

    render json: @tbl_actividads
  end

  # GET /tbl_actividads/1
  def show
    render json: @tbl_actividad
  end

  # POST /tbl_actividads
  def create
    @tbl_actividad = TblActividad.new(tbl_actividad_params)

    if @tbl_actividad.save
      render json: @tbl_actividad, status: :created, location: @tbl_actividad
    else
      render json: @tbl_actividad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_actividads/1
  def update
    if @tbl_actividad.update(tbl_actividad_params)
      render json: @tbl_actividad
    else
      render json: @tbl_actividad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_actividads/1
  def destroy
    @tbl_actividad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_actividad
      @tbl_actividad = TblActividad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_actividad_params
      params.require(:tbl_actividad).permit(:Nombre, :Detalle, :Recurso, :Estado, :Puntaje)
    end
end
