require 'test_helper'

class TblActividadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_actividad = tbl_actividad(:one)
  end

  test "should get index" do
    get tbl_actividads_url, as: :json
    assert_response :success
  end

  test "should create tbl_actividad" do
    assert_difference('TblActividad.count') do
      post tbl_actividads_url, params: { tbl_actividad: { Detalle: @tbl_actividad.Detalle, Estado: @tbl_actividad.Estado, Nombre: @tbl_actividad.Nombre, Puntaje: @tbl_actividad.Puntaje, Recurso: @tbl_actividad.Recurso } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_actividad" do
    get tbl_actividad_url(@tbl_actividad), as: :json
    assert_response :success
  end

  test "should update tbl_actividad" do
    patch tbl_actividad_url(@tbl_actividad), params: { tbl_actividad: { Detalle: @tbl_actividad.Detalle, Estado: @tbl_actividad.Estado, Nombre: @tbl_actividad.Nombre, Puntaje: @tbl_actividad.Puntaje, Recurso: @tbl_actividad.Recurso } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_actividad" do
    assert_difference('TblActividad.count', -1) do
      delete tbl_actividad_url(@tbl_actividad), as: :json
    end

    assert_response 204
  end
end
