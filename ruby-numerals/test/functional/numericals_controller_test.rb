require 'test_helper'

class NumericalsControllerTest < ActionController::TestCase
  setup do
    @numerical = numericals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:numericals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create numerical" do
    assert_difference('Numerical.count') do
      post :create, numerical: { number: @numerical.number }
    end

    assert_redirected_to numerical_path(assigns(:numerical))
  end

  test "should show numerical" do
    get :show, id: @numerical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @numerical
    assert_response :success
  end

  test "should update numerical" do
    put :update, id: @numerical, numerical: { number: @numerical.number }
    assert_redirected_to numerical_path(assigns(:numerical))
  end

  test "should destroy numerical" do
    assert_difference('Numerical.count', -1) do
      delete :destroy, id: @numerical
    end

    assert_redirected_to numericals_path
  end
end
