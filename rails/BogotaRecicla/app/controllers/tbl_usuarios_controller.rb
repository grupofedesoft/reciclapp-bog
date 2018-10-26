class TblUsuariosController < ApplicationController
  before_action :set_tbl_usuario, only: [:show, :update, :destroy]

  # GET /tbl_usuarios
  def index
    @tbl_usuarios = TblUsuario.all

    render json: @tbl_usuarios
  end

  # GET /tbl_usuarios/1
  def show
    render json: @tbl_usuario
  end

  # POST /tbl_usuarios
  def create
    @tbl_usuario = TblUsuario.new(tbl_usuario_params)

    if @tbl_usuario.save
      render json: @tbl_usuario, status: :created, location: @tbl_usuario
    else
      render json: @tbl_usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_usuarios/1
  def update
    if @tbl_usuario.update(tbl_usuario_params)
      render json: @tbl_usuario
    else
      render json: @tbl_usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_usuarios/1
  def destroy
    @tbl_usuario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_usuario
      @tbl_usuario = TblUsuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_usuario_params
      params.fetch(:tbl_usuario, {})
    end
end
