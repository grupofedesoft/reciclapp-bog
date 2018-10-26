class TblOperadorsController < ApplicationController
  before_action :set_tbl_operador, only: [:show, :update, :destroy]

  # GET /tbl_operadors
  def index
    @tbl_operadors = TblOperador.all

    render json: @tbl_operadors
  end

  # GET /tbl_operadors/1
  def show
    render json: @tbl_operador
  end

  # POST /tbl_operadors
  def create
    @tbl_operador = TblOperador.new(tbl_operador_params)

    if @tbl_operador.save
      render json: @tbl_operador, status: :created, location: @tbl_operador
    else
      render json: @tbl_operador.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_operadors/1
  def update
    if @tbl_operador.update(tbl_operador_params)
      render json: @tbl_operador
    else
      render json: @tbl_operador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_operadors/1
  def destroy
    @tbl_operador.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_operador
      @tbl_operador = TblOperador.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_operador_params
      params.require(:tbl_operador).permit(:Nombre, :Tipo_Doc, :Documento, :Estado, :Localidad)
    end
end
