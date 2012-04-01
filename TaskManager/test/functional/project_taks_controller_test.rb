require 'test_helper'

class ProjectTaksControllerTest < ActionController::TestCase
  setup do
    @project_tak = project_taks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_taks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_tak" do
    assert_difference('ProjectTak.count') do
      post :create, project_tak: @project_tak.attributes
    end

    assert_redirected_to project_tak_path(assigns(:project_tak))
  end

  test "should show project_tak" do
    get :show, id: @project_tak
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_tak
    assert_response :success
  end

  test "should update project_tak" do
    put :update, id: @project_tak, project_tak: @project_tak.attributes
    assert_redirected_to project_tak_path(assigns(:project_tak))
  end

  test "should destroy project_tak" do
    assert_difference('ProjectTak.count', -1) do
      delete :destroy, id: @project_tak
    end

    assert_redirected_to project_taks_path
  end
end
