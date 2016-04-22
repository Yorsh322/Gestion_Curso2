require 'test_helper'

class AcademicsControllerTest < ActionController::TestCase
  setup do
    @academic = academics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:academics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create academic" do
    assert_difference('Academic.count') do
      post :create, academic: { course_id: @academic.course_id, group_id: @academic.group_id, semester_id: @academic.semester_id, subject_id: @academic.subject_id }
    end

    assert_redirected_to academic_path(assigns(:academic))
  end

  test "should show academic" do
    get :show, id: @academic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @academic
    assert_response :success
  end

  test "should update academic" do
    patch :update, id: @academic, academic: { course_id: @academic.course_id, group_id: @academic.group_id, semester_id: @academic.semester_id, subject_id: @academic.subject_id }
    assert_redirected_to academic_path(assigns(:academic))
  end

  test "should destroy academic" do
    assert_difference('Academic.count', -1) do
      delete :destroy, id: @academic
    end

    assert_redirected_to academics_path
  end
end
