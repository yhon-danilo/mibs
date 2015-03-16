require 'test_helper'

class SesionesControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get perfil" do
    get :perfil
    assert_response :success
  end

  test "should get ajustes" do
    get :ajustes
    assert_response :success
  end

end
