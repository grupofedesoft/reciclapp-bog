require 'test_helper'

class TblEntidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_entidad = tbl_entidad(:one)
  end

  test "should get index" do
    get tbl_entidads_url, as: :json
    assert_response :success
  end

  test "should create tbl_entidad" do
    assert_difference('TblEntidad.count') do
      post tbl_entidads_url, params: { tbl_entidad: { Documento: @tbl_entidad.Documento, Estado: @tbl_entidad.Estado, Nombre: @tbl_entidad.Nombre, Tipo_Doc: @tbl_entidad.Tipo_Doc } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_entidad" do
    get tbl_entidad_url(@tbl_entidad), as: :json
    assert_response :success
  end

  test "should update tbl_entidad" do
    patch tbl_entidad_url(@tbl_entidad), params: { tbl_entidad: { Documento: @tbl_entidad.Documento, Estado: @tbl_entidad.Estado, Nombre: @tbl_entidad.Nombre, Tipo_Doc: @tbl_entidad.Tipo_Doc } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_entidad" do
    assert_difference('TblEntidad.count', -1) do
      delete tbl_entidad_url(@tbl_entidad), as: :json
    end

    assert_response 204
  end
end
