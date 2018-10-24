require 'test_helper'

class MethodsPreventionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @methods_prevention = methods_preventions(:one)
  end

  test "should get index" do
    get methods_preventions_url, as: :json
    assert_response :success
  end

  test "should create methods_prevention" do
    assert_difference('MethodsPrevention.count') do
      post methods_preventions_url, params: { methods_prevention: { description_method: @methods_prevention.description_method, duration_method: @methods_prevention.duration_method, name_method: @methods_prevention.name_method, recommendations_method: @methods_prevention.recommendations_method, type_duration: @methods_prevention.type_duration } }, as: :json
    end

    assert_response 201
  end

  test "should show methods_prevention" do
    get methods_prevention_url(@methods_prevention), as: :json
    assert_response :success
  end

  test "should update methods_prevention" do
    patch methods_prevention_url(@methods_prevention), params: { methods_prevention: { description_method: @methods_prevention.description_method, duration_method: @methods_prevention.duration_method, name_method: @methods_prevention.name_method, recommendations_method: @methods_prevention.recommendations_method, type_duration: @methods_prevention.type_duration } }, as: :json
    assert_response 200
  end

  test "should destroy methods_prevention" do
    assert_difference('MethodsPrevention.count', -1) do
      delete methods_prevention_url(@methods_prevention), as: :json
    end

    assert_response 204
  end
end
