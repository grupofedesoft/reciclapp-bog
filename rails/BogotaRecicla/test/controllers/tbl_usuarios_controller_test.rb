require 'test_helper'

class TblUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_usuario = tbl_usuario(:one)
  end

  test "should get index" do
    get tbl_usuarios_url, as: :json
    assert_response :success
  end

  test "should create tbl_usuario" do
    assert_difference('TblUsuario.count') do
      post tbl_usuarios_url, params: { tbl_usuario: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_usuario" do
    get tbl_usuario_url(@tbl_usuario), as: :json
    assert_response :success
  end

  test "should update tbl_usuario" do
    patch tbl_usuario_url(@tbl_usuario), params: { tbl_usuario: {  } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_usuario" do
    assert_difference('TblUsuario.count', -1) do
      delete tbl_usuario_url(@tbl_usuario), as: :json
    end

    assert_response 204
  end
end
