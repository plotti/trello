require 'test_helper'

class NextStepsControllerTest < ActionController::TestCase
  setup do
    @next_step = next_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:next_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create next_step" do
    assert_difference('NextStep.count') do
      post :create, next_step: { date: @next_step.date, description: @next_step.description, link: @next_step.link, name: @next_step.name, owner: @next_step.owner, owner: @next_step.owner }
    end

    assert_redirected_to next_step_path(assigns(:next_step))
  end

  test "should show next_step" do
    get :show, id: @next_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @next_step
    assert_response :success
  end

  test "should update next_step" do
    patch :update, id: @next_step, next_step: { date: @next_step.date, description: @next_step.description, link: @next_step.link, name: @next_step.name, owner: @next_step.owner, owner: @next_step.owner }
    assert_redirected_to next_step_path(assigns(:next_step))
  end

  test "should destroy next_step" do
    assert_difference('NextStep.count', -1) do
      delete :destroy, id: @next_step
    end

    assert_redirected_to next_steps_path
  end
end
