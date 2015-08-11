require 'test_helper'

class CourseTermItemsControllerTest < ActionController::TestCase
  setup do
    @course_term_item = course_term_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_term_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_term_item" do
    assert_difference('CourseTermItem.count') do
      post :create, course_term_item: { course_id: @course_term_item.course_id, term_item_id: @course_term_item.term_item_id }
    end

    assert_redirected_to course_term_item_path(assigns(:course_term_item))
  end

  test "should show course_term_item" do
    get :show, id: @course_term_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_term_item
    assert_response :success
  end

  test "should update course_term_item" do
    patch :update, id: @course_term_item, course_term_item: { course_id: @course_term_item.course_id, term_item_id: @course_term_item.term_item_id }
    assert_redirected_to course_term_item_path(assigns(:course_term_item))
  end

  test "should destroy course_term_item" do
    assert_difference('CourseTermItem.count', -1) do
      delete :destroy, id: @course_term_item
    end

    assert_redirected_to course_term_items_path
  end
end
