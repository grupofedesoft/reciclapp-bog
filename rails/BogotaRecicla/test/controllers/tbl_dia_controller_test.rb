require 'test_helper'

class TblDiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_dium = tbl_dium(:one)
  end

  test "should get index" do
    get tbl_dia_url, as: :json
    assert_response :success
  end

  test "should create tbl_dium" do
    assert_difference('TblDium.count') do
      post tbl_dia_url, params: { tbl_dium: { Estado: @tbl_dium.Estado, Nombre: @tbl_dium.Nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_dium" do
    get tbl_dium_url(@tbl_dium), as: :json
    assert_response :success
  end

  test "should update tbl_dium" do
    patch tbl_dium_url(@tbl_dium), params: { tbl_dium: { Estado: @tbl_dium.Estado, Nombre: @tbl_dium.Nombre } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_dium" do
    assert_difference('TblDium.count', -1) do
      delete tbl_dium_url(@tbl_dium), as: :json
    end

    assert_response 204
  end
end
