class TblDiaController < ApplicationController
  before_action :set_tbl_dia, only: [:show, :update, :destroy]

  # GET /tbl_dia
  def index
    @tbl_dias = TblDia.all

    render json: @tbl_dias
  end

  # GET /tbl_dia/1
  def show
    render json: @tbl_dia
  end

  # POST /tbl_dia
  def create
    @tbl_dia = TblDia.new(tbl_dium_params)

    if @tbl_dia.save
      render json: @tbl_dia, status: :created, location: @tbl_dia
    else
      render json: @tbl_dia.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_dia/1
  def update
    if @tbl_dia.update(tbl_dium_params)
      render json: @tbl_dia
    else
      render json: @tbl_dia.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_dia/1
  def destroy
    @tbl_dia.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_dia
      @tbl_dia = TblDia.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_dium_params
      params.require(:tbl_dia).permit(:Nombre, :Estado)
    end
end
