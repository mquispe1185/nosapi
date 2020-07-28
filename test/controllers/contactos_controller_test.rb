require 'test_helper'

class ContactosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacto = contactos(:one)
  end

  test "should get index" do
    get contactos_url, as: :json
    assert_response :success
  end

  test "should create contacto" do
    assert_difference('Contacto.count') do
      post contactos_url, params: { contacto: { email: @contacto.email, estadocontacto_id: @contacto.estadocontacto_id, nombre: @contacto.nombre, observacion: @contacto.observacion, origen_id: @contacto.origen_id, telefono: @contacto.telefono, usuario_id: @contacto.usuario_id } }, as: :json
    end

    assert_response 201
  end

  test "should show contacto" do
    get contacto_url(@contacto), as: :json
    assert_response :success
  end

  test "should update contacto" do
    patch contacto_url(@contacto), params: { contacto: { email: @contacto.email, estadocontacto_id: @contacto.estadocontacto_id, nombre: @contacto.nombre, observacion: @contacto.observacion, origen_id: @contacto.origen_id, telefono: @contacto.telefono, usuario_id: @contacto.usuario_id } }, as: :json
    assert_response 200
  end

  test "should destroy contacto" do
    assert_difference('Contacto.count', -1) do
      delete contacto_url(@contacto), as: :json
    end

    assert_response 204
  end
end
