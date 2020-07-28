require 'test_helper'

class EstadocontactosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estadocontacto = estadocontactos(:one)
  end

  test "should get index" do
    get estadocontactos_url, as: :json
    assert_response :success
  end

  test "should create estadocontacto" do
    assert_difference('Estadocontacto.count') do
      post estadocontactos_url, params: { estadocontacto: { descripcion: @estadocontacto.descripcion } }, as: :json
    end

    assert_response 201
  end

  test "should show estadocontacto" do
    get estadocontacto_url(@estadocontacto), as: :json
    assert_response :success
  end

  test "should update estadocontacto" do
    patch estadocontacto_url(@estadocontacto), params: { estadocontacto: { descripcion: @estadocontacto.descripcion } }, as: :json
    assert_response 200
  end

  test "should destroy estadocontacto" do
    assert_difference('Estadocontacto.count', -1) do
      delete estadocontacto_url(@estadocontacto), as: :json
    end

    assert_response 204
  end
end
