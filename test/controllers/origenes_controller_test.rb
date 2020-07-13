require 'test_helper'

class OrigenesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @origen = origenes(:one)
  end

  test "should get index" do
    get origenes_url, as: :json
    assert_response :success
  end

  test "should create origen" do
    assert_difference('Origen.count') do
      post origenes_url, params: { origen: { descripcion: @origen.descripcion } }, as: :json
    end

    assert_response 201
  end

  test "should show origen" do
    get origen_url(@origen), as: :json
    assert_response :success
  end

  test "should update origen" do
    patch origen_url(@origen), params: { origen: { descripcion: @origen.descripcion } }, as: :json
    assert_response 200
  end

  test "should destroy origen" do
    assert_difference('Origen.count', -1) do
      delete origen_url(@origen), as: :json
    end

    assert_response 204
  end
end
