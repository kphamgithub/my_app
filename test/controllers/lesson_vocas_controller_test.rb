require 'test_helper'

class LessonVocasControllerTest < ActionController::TestCase
  setup do
    @lesson_voca = lesson_vocas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_vocas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_voca" do
    assert_difference('LessonVoca.count') do
      post :create, lesson_voca: { lesson_id: @lesson_voca.lesson_id, vocabulary_id: @lesson_voca.vocabulary_id }
    end

    assert_redirected_to lesson_voca_path(assigns(:lesson_voca))
  end

  test "should show lesson_voca" do
    get :show, id: @lesson_voca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_voca
    assert_response :success
  end

  test "should update lesson_voca" do
    patch :update, id: @lesson_voca, lesson_voca: { lesson_id: @lesson_voca.lesson_id, vocabulary_id: @lesson_voca.vocabulary_id }
    assert_redirected_to lesson_voca_path(assigns(:lesson_voca))
  end

  test "should destroy lesson_voca" do
    assert_difference('LessonVoca.count', -1) do
      delete :destroy, id: @lesson_voca
    end

    assert_redirected_to lesson_vocas_path
  end
end
