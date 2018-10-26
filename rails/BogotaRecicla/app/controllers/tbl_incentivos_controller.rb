class TblIncentivosController < ApplicationController
  before_action :set_tbl_incentivo, only: [:show, :update, :destroy]

  # GET /tbl_incentivos
  def index
    @tbl_incentivos = TblIncentivo.all

    render json: @tbl_incentivos
  end

  # GET /tbl_incentivos/1
  def show
    render json: @tbl_incentivo
  end

  # POST /tbl_incentivos
  def create
    @tbl_incentivo = TblIncentivo.new(tbl_incentivo_params)

    if @tbl_incentivo.save
      render json: @tbl_incentivo, status: :created, location: @tbl_incentivo
    else
      render json: @tbl_incentivo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_incentivos/1
  def update
    if @tbl_incentivo.update(tbl_incentivo_params)
      render json: @tbl_incentivo
    else
      render json: @tbl_incentivo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_incentivos/1
  def destroy
    @tbl_incentivo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_incentivo
      @tbl_incentivo = TblIncentivo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_incentivo_params
      params.require(:tbl_incentivo).permit(:Nombre, :Detalle, :Estado, :Actividad, :Entidad)
    end
end
