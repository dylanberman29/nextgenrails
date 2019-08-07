require 'test_helper'

class VolunteerheresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @volunteerhere = volunteerheres(:one)
  end

  test "should get index" do
    get volunteerheres_url
    assert_response :success
  end

  test "should get new" do
    get new_volunteerhere_url
    assert_response :success
  end

  test "should create volunteerhere" do
    assert_difference('Volunteerhere.count') do
      post volunteerheres_url, params: { volunteerhere: { email: @volunteerhere.email, first_name: @volunteerhere.first_name, last_name: @volunteerhere.last_name } }
    end

    assert_redirected_to volunteerhere_url(Volunteerhere.last)
  end

  test "should show volunteerhere" do
    get volunteerhere_url(@volunteerhere)
    assert_response :success
  end

  test "should get edit" do
    get edit_volunteerhere_url(@volunteerhere)
    assert_response :success
  end

  test "should update volunteerhere" do
    patch volunteerhere_url(@volunteerhere), params: { volunteerhere: { email: @volunteerhere.email, first_name: @volunteerhere.first_name, last_name: @volunteerhere.last_name } }
    assert_redirected_to volunteerhere_url(@volunteerhere)
  end

  test "should destroy volunteerhere" do
    assert_difference('Volunteerhere.count', -1) do
      delete volunteerhere_url(@volunteerhere)
    end

    assert_redirected_to volunteerheres_url
  end
end
