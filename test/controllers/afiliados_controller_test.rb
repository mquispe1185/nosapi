require 'test_helper'

class AfiliadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @afiliado = afiliados(:one)
  end

  test "should get index" do
    get afiliados_url, as: :json
    assert_response :success
  end

  test "should create afiliado" do
    assert_difference('Afiliado.count') do
      post afiliados_url, params: { afiliado: { adherido: @afiliado.adherido, adherido_by_id: @afiliado.adherido_by_id, afiliado: @afiliado.afiliado, afiliado_by_id: @afiliado.afiliado_by_id, apellido: @afiliado.apellido, celular: @afiliado.celular, contactado: @afiliado.contactado, contactado_by_id: @afiliado.contactado_by_id, departamento_id: @afiliado.departamento_id, dni: @afiliado.dni, domicilio: @afiliado.domicilio, localidad_id: @afiliado.localidad_id, nombre: @afiliado.nombre, observaciones: @afiliado.observaciones, provincia_id: @afiliado.provincia_id, sexo: @afiliado.sexo, telefono: @afiliado.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show afiliado" do
    get afiliado_url(@afiliado), as: :json
    assert_response :success
  end

  test "should update afiliado" do
    patch afiliado_url(@afiliado), params: { afiliado: { adherido: @afiliado.adherido, adherido_by_id: @afiliado.adherido_by_id, afiliado: @afiliado.afiliado, afiliado_by_id: @afiliado.afiliado_by_id, apellido: @afiliado.apellido, celular: @afiliado.celular, contactado: @afiliado.contactado, contactado_by_id: @afiliado.contactado_by_id, departamento_id: @afiliado.departamento_id, dni: @afiliado.dni, domicilio: @afiliado.domicilio, localidad_id: @afiliado.localidad_id, nombre: @afiliado.nombre, observaciones: @afiliado.observaciones, provincia_id: @afiliado.provincia_id, sexo: @afiliado.sexo, telefono: @afiliado.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy afiliado" do
    assert_difference('Afiliado.count', -1) do
      delete afiliado_url(@afiliado), as: :json
    end

    assert_response 204
  end
end
