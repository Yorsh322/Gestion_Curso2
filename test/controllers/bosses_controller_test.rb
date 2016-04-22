require 'test_helper'

class BossesControllerTest < ActionController::TestCase
  setup do
    @boss = bosses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bosses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boss" do
    assert_difference('Boss.count') do
      post :create, boss: { academico: @boss.academico, apellido: @boss.apellido, nombre: @boss.nombre }
    end

    assert_redirected_to boss_path(assigns(:boss))
  end

  test "should show boss" do
    get :show, id: @boss
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boss
    assert_response :success
  end

  test "should update boss" do
    patch :update, id: @boss, boss: { academico: @boss.academico, apellido: @boss.apellido, nombre: @boss.nombre }
    assert_redirected_to boss_path(assigns(:boss))
  end

  test "should destroy boss" do
    assert_difference('Boss.count', -1) do
      delete :destroy, id: @boss
    end

    assert_redirected_to bosses_path
  end
end
