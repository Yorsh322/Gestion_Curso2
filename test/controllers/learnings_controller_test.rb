require 'test_helper'

class LearningsControllerTest < ActionController::TestCase
  setup do
    @learning = learnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:learnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create learning" do
    assert_difference('Learning.count') do
      post :create, learning: { actividad: @learning.actividad, content_id: @learning.content_id, especifica: @learning.especifica, portafolio: @learning.portafolio, teaching: @learning.teaching }
    end

    assert_redirected_to learning_path(assigns(:learning))
  end

  test "should show learning" do
    get :show, id: @learning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @learning
    assert_response :success
  end

  test "should update learning" do
    patch :update, id: @learning, learning: { actividad: @learning.actividad, content_id: @learning.content_id, especifica: @learning.especifica, portafolio: @learning.portafolio, teaching: @learning.teaching }
    assert_redirected_to learning_path(assigns(:learning))
  end

  test "should destroy learning" do
    assert_difference('Learning.count', -1) do
      delete :destroy, id: @learning
    end

    assert_redirected_to learnings_path
  end
end
