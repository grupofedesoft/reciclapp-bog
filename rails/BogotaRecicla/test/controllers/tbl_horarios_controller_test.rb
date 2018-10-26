require 'test_helper'

class TblHorariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_horario = tbl_horario(:one)
  end

  test "should get index" do
    get tbl_horarios_url, as: :json
    assert_response :success
  end

  test "should create tbl_horario" do
    assert_difference('TblHorario.count') do
      post tbl_horarios_url, params: { tbl_horario: { Dia: @tbl_horario.Dia, Estado: @tbl_horario.Estado, HoraFinal: @tbl_horario.HoraFinal, HoraInicial: @tbl_horario.HoraInicial, Localidad: @tbl_horario.Localidad } }, as: :json
    end

    assert_response 201
  end

  test "should show tbl_horario" do
    get tbl_horario_url(@tbl_horario), as: :json
    assert_response :success
  end

  test "should update tbl_horario" do
    patch tbl_horario_url(@tbl_horario), params: { tbl_horario: { Dia: @tbl_horario.Dia, Estado: @tbl_horario.Estado, HoraFinal: @tbl_horario.HoraFinal, HoraInicial: @tbl_horario.HoraInicial, Localidad: @tbl_horario.Localidad } }, as: :json
    assert_response 200
  end

  test "should destroy tbl_horario" do
    assert_difference('TblHorario.count', -1) do
      delete tbl_horario_url(@tbl_horario), as: :json
    end

    assert_response 204
  end
end
