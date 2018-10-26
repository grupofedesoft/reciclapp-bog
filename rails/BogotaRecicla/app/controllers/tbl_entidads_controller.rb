class TblEntidadsController < ApplicationController
  before_action :set_tbl_entidad, only: [:show, :update, :destroy]

  # GET /tbl_entidads
  def index
    @tbl_entidads = TblEntidad.all

    render json: @tbl_entidads
  end

  # GET /tbl_entidads/1
  def show
    render json: @tbl_entidad
  end

  # POST /tbl_entidads
  def create
    @tbl_entidad = TblEntidad.new(tbl_entidad_params)

    if @tbl_entidad.save
      render json: @tbl_entidad, status: :created, location: @tbl_entidad
    else
      render json: @tbl_entidad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_entidads/1
  def update
    if @tbl_entidad.update(tbl_entidad_params)
      render json: @tbl_entidad
    else
      render json: @tbl_entidad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_entidads/1
  def destroy
    @tbl_entidad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_entidad
      @tbl_entidad = TblEntidad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_entidad_params
      params.require(:tbl_entidad).permit(:Tipo_Doc, :Documento, :Nombre, :Estado)
    end
end
