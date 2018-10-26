class TblHorariosController < ApplicationController
  before_action :set_tbl_horario, only: [:show, :update, :destroy]

  # GET /tbl_horarios
  def index
    @tbl_horarios = TblHorario.all

    render json: @tbl_horarios
  end

  # GET /tbl_horarios/1
  def show
    render json: @tbl_horario
  end

  # POST /tbl_horarios
  def create
    @tbl_horario = TblHorario.new(tbl_horario_params)

    if @tbl_horario.save
      render json: @tbl_horario, status: :created, location: @tbl_horario
    else
      render json: @tbl_horario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_horarios/1
  def update
    if @tbl_horario.update(tbl_horario_params)
      render json: @tbl_horario
    else
      render json: @tbl_horario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_horarios/1
  def destroy
    @tbl_horario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_horario
      @tbl_horario = TblHorario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_horario_params
      params.require(:tbl_horario).permit(:Estado, :Localidad, :Dia, :HoraInicial, :HoraFinal)
    end
end
