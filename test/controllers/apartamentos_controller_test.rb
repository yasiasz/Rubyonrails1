require 'test_helper'

class ApartamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartamento = apartamentos(:one)
  end

  test "should get index" do
    get apartamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_apartamento_url
    assert_response :success
  end

  test "should create apartamento" do
    assert_difference('Apartamento.count') do
      post apartamentos_url, params: { apartamento: { nombre: @apartamento.nombre, piso: @apartamento.piso, torre: @apartamento.torre } }
    end

    assert_redirected_to apartamento_url(Apartamento.last)
  end

  test "should show apartamento" do
    get apartamento_url(@apartamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartamento_url(@apartamento)
    assert_response :success
  end

  test "should update apartamento" do
    patch apartamento_url(@apartamento), params: { apartamento: { nombre: @apartamento.nombre, piso: @apartamento.piso, torre: @apartamento.torre } }
    assert_redirected_to apartamento_url(@apartamento)
  end

  test "should destroy apartamento" do
    assert_difference('Apartamento.count', -1) do
      delete apartamento_url(@apartamento)
    end

    assert_redirected_to apartamentos_url
  end
end
