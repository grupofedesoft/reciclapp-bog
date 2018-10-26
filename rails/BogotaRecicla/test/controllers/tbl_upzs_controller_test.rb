require 'test_helper'

class TblUpzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_upz = tbl_upz(:one)
  end

  test "should get index" do
    get tbl_upzs_url, as: :json
    assert_response :success
  end

  test "should create tbl_upz" do
    assert_difference('TblUpz.count') do
      post tbl_upzs_url, params: { tbl_upz: { Estado: @tbl_upz.Estado, Localidad: @tbl_upz.Localidad, Nombre: @tbl_upz.Nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_upz" do
    get tbl_upz_url(@tbl_upz), as: :json
    assert_response :success
  end

  test "should update tbl_upz" do
    patch tbl_upz_url(@tbl_upz), params: { tbl_upz: { Estado: @tbl_upz.Estado, Localidad: @tbl_upz.Localidad, Nombre: @tbl_upz.Nombre } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_upz" do
    assert_difference('TblUpz.count', -1) do
      delete tbl_upz_url(@tbl_upz), as: :json
    end

    assert_response 204
  end
end
