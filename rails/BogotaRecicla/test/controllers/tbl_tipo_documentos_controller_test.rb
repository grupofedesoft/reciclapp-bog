require 'test_helper'

class TblTipoDocumentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_tipo_documento = tbl_tipo_documento(:one)
  end

  test "should get index" do
    get tbl_tipo_documentos_url, as: :json
    assert_response :success
  end

  test "should create tbl_tipo_documento" do
    assert_difference('TblTipoDocumento.count') do
      post tbl_tipo_documentos_url, params: { tbl_tipo_documento: { Estado: @tbl_tipo_documento.Estado, Nombre: @tbl_tipo_documento.Nombre, Tipo_Doc: @tbl_tipo_documento.Tipo_Doc } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_tipo_documento" do
    get tbl_tipo_documento_url(@tbl_tipo_documento), as: :json
    assert_response :success
  end

  test "should update tbl_tipo_documento" do
    patch tbl_tipo_documento_url(@tbl_tipo_documento), params: { tbl_tipo_documento: { Estado: @tbl_tipo_documento.Estado, Nombre: @tbl_tipo_documento.Nombre, Tipo_Doc: @tbl_tipo_documento.Tipo_Doc } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_tipo_documento" do
    assert_difference('TblTipoDocumento.count', -1) do
      delete tbl_tipo_documento_url(@tbl_tipo_documento), as: :json
    end

    assert_response 204
  end
end
