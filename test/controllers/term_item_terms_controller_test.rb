require 'test_helper'

class TermItemTermsControllerTest < ActionController::TestCase
  setup do
    @term_item_term = term_item_terms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:term_item_terms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create term_item_term" do
    assert_difference('TermItemTerm.count') do
      post :create, term_item_term: { term_id: @term_item_term.term_id, term_item_id: @term_item_term.term_item_id }
    end

    assert_redirected_to term_item_term_path(assigns(:term_item_term))
  end

  test "should show term_item_term" do
    get :show, id: @term_item_term
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @term_item_term
    assert_response :success
  end

  test "should update term_item_term" do
    patch :update, id: @term_item_term, term_item_term: { term_id: @term_item_term.term_id, term_item_id: @term_item_term.term_item_id }
    assert_redirected_to term_item_term_path(assigns(:term_item_term))
  end

  test "should destroy term_item_term" do
    assert_difference('TermItemTerm.count', -1) do
      delete :destroy, id: @term_item_term
    end

    assert_redirected_to term_item_terms_path
  end
end
