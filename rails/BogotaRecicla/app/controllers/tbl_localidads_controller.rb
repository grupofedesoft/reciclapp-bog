class TblLocalidadsController < ApplicationController
  before_action :set_tbl_localidad, only: [:show, :update, :destroy]

  # GET /tbl_localidads
  def index
    @tbl_localidads = TblLocalidad.all

    render json: @tbl_localidads
  end

  # GET /tbl_localidads/1
  def show
    render json: @tbl_localidad
  end

  # POST /tbl_localidads
  def create
    @tbl_localidad = TblLocalidad.new(tbl_localidad_params)

    if @tbl_localidad.save
      render json: @tbl_localidad, status: :created, location: @tbl_localidad
    else
      render json: @tbl_localidad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_localidads/1
  def update
    if @tbl_localidad.update(tbl_localidad_params)
      render json: @tbl_localidad
    else
      render json: @tbl_localidad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_localidads/1
  def destroy
    @tbl_localidad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_localidad
      @tbl_localidad = TblLocalidad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_localidad_params
      params.require(:tbl_localidad).permit(:Nombre, :Estado)
    end
end
