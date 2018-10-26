require 'test_helper'

class TblIncentivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_incentivo = tbl_incentivo(:one)
  end

  test "should get index" do
    get tbl_incentivos_url, as: :json
    assert_response :success
  end

  test "should create tbl_incentivo" do
    assert_difference('TblIncentivo.count') do
      post tbl_incentivos_url, params: { tbl_incentivo: { Actividad: @tbl_incentivo.Actividad, Detalle: @tbl_incentivo.Detalle, Entidad: @tbl_incentivo.Entidad, Estado: @tbl_incentivo.Estado, Nombre: @tbl_incentivo.Nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_incentivo" do
    get tbl_incentivo_url(@tbl_incentivo), as: :json
    assert_response :success
  end

  test "should update tbl_incentivo" do
    patch tbl_incentivo_url(@tbl_incentivo), params: { tbl_incentivo: { Actividad: @tbl_incentivo.Actividad, Detalle: @tbl_incentivo.Detalle, Entidad: @tbl_incentivo.Entidad, Estado: @tbl_incentivo.Estado, Nombre: @tbl_incentivo.Nombre } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_incentivo" do
    assert_difference('TblIncentivo.count', -1) do
      delete tbl_incentivo_url(@tbl_incentivo), as: :json
    end

    assert_response 204
  end
end
