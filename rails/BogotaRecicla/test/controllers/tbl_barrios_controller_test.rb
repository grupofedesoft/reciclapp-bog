require 'test_helper'

class TblBarriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_barrio = tbl_barrio(:one)
  end

  test "should get index" do
    get tbl_barrios_url, as: :json
    assert_response :success
  end

  test "should create tbl_barrio" do
    assert_difference('TblBarrio.count') do
      post tbl_barrios_url, params: { tbl_barrio: { Estado: @tbl_barrio.Estado, Nombre: @tbl_barrio.Nombre, Upz: @tbl_barrio.Upz } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_barrio" do
    get tbl_barrio_url(@tbl_barrio), as: :json
    assert_response :success
  end

  test "should update tbl_barrio" do
    patch tbl_barrio_url(@tbl_barrio), params: { tbl_barrio: { Estado: @tbl_barrio.Estado, Nombre: @tbl_barrio.Nombre, Upz: @tbl_barrio.Upz } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_barrio" do
    assert_difference('TblBarrio.count', -1) do
      delete tbl_barrio_url(@tbl_barrio), as: :json
    end

    assert_response 204
  end
end
