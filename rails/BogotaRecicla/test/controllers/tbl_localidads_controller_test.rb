require 'test_helper'

class TblLocalidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_localidad = tbl_localidad(:one)
  end

  test "should get index" do
    get tbl_localidads_url, as: :json
    assert_response :success
  end

  test "should create tbl_localidad" do
    assert_difference('TblLocalidad.count') do
      post tbl_localidads_url, params: { tbl_localidad: { Estado: @tbl_localidad.Estado, Nombre: @tbl_localidad.Nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_localidad" do
    get tbl_localidad_url(@tbl_localidad), as: :json
    assert_response :success
  end

  test "should update tbl_localidad" do
    patch tbl_localidad_url(@tbl_localidad), params: { tbl_localidad: { Estado: @tbl_localidad.Estado, Nombre: @tbl_localidad.Nombre } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_localidad" do
    assert_difference('TblLocalidad.count', -1) do
      delete tbl_localidad_url(@tbl_localidad), as: :json
    end

    assert_response 204
  end
end
