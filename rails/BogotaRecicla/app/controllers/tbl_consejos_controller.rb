class TblConsejosController < ApplicationController
  before_action :set_tbl_consejo, only: [:show, :update, :destroy]

  # GET /tbl_consejos
  def index
    @tbl_consejos = TblConsejo.all

    render json: @tbl_consejos
  end

  # GET /tbl_consejos/1
  def show
    render json: @tbl_consejo
  end

  # POST /tbl_consejos
  def create
    @tbl_consejo = TblConsejo.new(tbl_consejo_params)

    if @tbl_consejo.save
      render json: @tbl_consejo, status: :created, location: @tbl_consejo
    else
      render json: @tbl_consejo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_consejos/1
  def update
    if @tbl_consejo.update(tbl_consejo_params)
      render json: @tbl_consejo
    else
      render json: @tbl_consejo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_consejos/1
  def destroy
    @tbl_consejo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_consejo
      @tbl_consejo = TblConsejo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_consejo_params
      params.require(:tbl_consejo).permit(:Nombre, :Recurso, :Detalle, :Estado)
    end
end
