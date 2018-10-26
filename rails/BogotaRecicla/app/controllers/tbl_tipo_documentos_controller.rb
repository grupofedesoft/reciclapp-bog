class TblTipoDocumentosController < ApplicationController
  before_action :set_tbl_tipo_documento, only: [:show, :update, :destroy]

  # GET /tbl_tipo_documentos
  def index
    @tbl_tipo_documentos = TblTipoDocumento.all

    render json: @tbl_tipo_documentos
  end

  # GET /tbl_tipo_documentos/1
  def show
    render json: @tbl_tipo_documento
  end

  # POST /tbl_tipo_documentos
  def create
    @tbl_tipo_documento = TblTipoDocumento.new(tbl_tipo_documento_params)

    if @tbl_tipo_documento.save
      render json: @tbl_tipo_documento, status: :created, location: @tbl_tipo_documento
    else
      render json: @tbl_tipo_documento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tbl_tipo_documentos/1
  def update
    if @tbl_tipo_documento.update(tbl_tipo_documento_params)
      render json: @tbl_tipo_documento
    else
      render json: @tbl_tipo_documento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tbl_tipo_documentos/1
  def destroy
    @tbl_tipo_documento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_tipo_documento
      @tbl_tipo_documento = TblTipoDocumento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tbl_tipo_documento_params
      params.require(:tbl_tipo_documento).permit(:Tipo_Doc, :Nombre, :Estado)
    end
end
