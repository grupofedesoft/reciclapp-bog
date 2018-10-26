require 'test_helper'

class TblOperadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_operador = tbl_operador(:one)
  end

  test "should get index" do
    get tbl_operadors_url, as: :json
    assert_response :success
  end

  test "should create tbl_operador" do
    assert_difference('TblOperador.count') do
      post tbl_operadors_url, params: { tbl_operador: { Documento: @tbl_operador.Documento, Estado: @tbl_operador.Estado, Localidad: @tbl_operador.Localidad, Nombre: @tbl_operador.Nombre, Tipo_Doc: @tbl_operador.Tipo_Doc } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_operador" do
    get tbl_operador_url(@tbl_operador), as: :json
    assert_response :success
  end

  test "should update tbl_operador" do
    patch tbl_operador_url(@tbl_operador), params: { tbl_operador: { Documento: @tbl_operador.Documento, Estado: @tbl_operador.Estado, Localidad: @tbl_operador.Localidad, Nombre: @tbl_operador.Nombre, Tipo_Doc: @tbl_operador.Tipo_Doc } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_operador" do
    assert_difference('TblOperador.count', -1) do
      delete tbl_operador_url(@tbl_operador), as: :json
    end

    assert_response 204
  end
end
