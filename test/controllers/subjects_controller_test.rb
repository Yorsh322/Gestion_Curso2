require 'test_helper'

class SubjectsControllerTest < ActionController::TestCase
  setup do
    @subject = subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject" do
    assert_difference('Subject.count') do
      post :create, subject: { caracterizacion: @subject.caracterizacion, carrera_id: @subject.carrera_id, clave: @subject.clave, credito: @subject.credito, docente_id: @subject.docente_id, nombre: @subject.nombre, objetivo: @subject.objetivo, practica: @subject.practica, semestre_id: @subject.semestre_id, teorica: @subject.teorica, unit: @subject.unit }
    end

    assert_redirected_to subject_path(assigns(:subject))
  end

  test "should show subject" do
    get :show, id: @subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject
    assert_response :success
  end

  test "should update subject" do
    patch :update, id: @subject, subject: { caracterizacion: @subject.caracterizacion, carrera_id: @subject.carrera_id, clave: @subject.clave, credito: @subject.credito, docente_id: @subject.docente_id, nombre: @subject.nombre, objetivo: @subject.objetivo, practica: @subject.practica, semestre_id: @subject.semestre_id, teorica: @subject.teorica, unit: @subject.unit }
    assert_redirected_to subject_path(assigns(:subject))
  end

  test "should destroy subject" do
    assert_difference('Subject.count', -1) do
      delete :destroy, id: @subject
    end

    assert_redirected_to subjects_path
  end
end
