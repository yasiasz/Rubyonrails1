require 'test_helper'

class TorresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @torre = torres(:one)
  end

  test "should get index" do
    get torres_url
    assert_response :success
  end

  test "should get new" do
    get new_torre_url
    assert_response :success
  end

  test "should create torre" do
    assert_difference('Torre.count') do
      post torres_url, params: { torre: { nombre: @torre.nombre, portero: @torre.portero } }
    end

    assert_redirected_to torre_url(Torre.last)
  end

  test "should show torre" do
    get torre_url(@torre)
    assert_response :success
  end

  test "should get edit" do
    get edit_torre_url(@torre)
    assert_response :success
  end

  test "should update torre" do
    patch torre_url(@torre), params: { torre: { nombre: @torre.nombre, portero: @torre.portero } }
    assert_redirected_to torre_url(@torre)
  end

  test "should destroy torre" do
    assert_difference('Torre.count', -1) do
      delete torre_url(@torre)
    end

    assert_redirected_to torres_url
  end
end
