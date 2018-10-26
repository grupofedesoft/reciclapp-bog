require 'test_helper'

class TblConsejosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_consejo = tbl_consejo(:one)
  end

  test "should get index" do
    get tbl_consejos_url, as: :json
    assert_response :success
  end

  test "should create tbl_consejo" do
    assert_difference('TblConsejo.count') do
      post tbl_consejos_url, params: { tbl_consejo: { Detalle: @tbl_consejo.Detalle, Estado: @tbl_consejo.Estado, Nombre: @tbl_consejo.Nombre, Recurso: @tbl_consejo.Recurso } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_consejo" do
    get tbl_consejo_url(@tbl_consejo), as: :json
    assert_response :success
  end

  test "should update tbl_consejo" do
    patch tbl_consejo_url(@tbl_consejo), params: { tbl_consejo: { Detalle: @tbl_consejo.Detalle, Estado: @tbl_consejo.Estado, Nombre: @tbl_consejo.Nombre, Recurso: @tbl_consejo.Recurso } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_consejo" do
    assert_difference('TblConsejo.count', -1) do
      delete tbl_consejo_url(@tbl_consejo), as: :json
    end

    assert_response 204
  end
end
