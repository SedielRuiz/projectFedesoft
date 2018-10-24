require 'test_helper'

class ContraceptiveMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contraceptive_method = contraceptive_methods(:one)
  end

  test "should get index" do
    get contraceptive_methods_url, as: :json
    assert_response :success
  end

  test "should create contraceptive_method" do
    assert_difference('ContraceptiveMethod.count') do
      post contraceptive_methods_url, params: { contraceptive_method: { description_contraceptive: @contraceptive_method.description_contraceptive, name_contraceptive: @contraceptive_method.name_contraceptive } }, as: :json
    end

    assert_response 201
  end

  test "should show contraceptive_method" do
    get contraceptive_method_url(@contraceptive_method), as: :json
    assert_response :success
  end

  test "should update contraceptive_method" do
    patch contraceptive_method_url(@contraceptive_method), params: { contraceptive_method: { description_contraceptive: @contraceptive_method.description_contraceptive, name_contraceptive: @contraceptive_method.name_contraceptive } }, as: :json
    assert_response 200
  end

  test "should destroy contraceptive_method" do
    assert_difference('ContraceptiveMethod.count', -1) do
      delete contraceptive_method_url(@contraceptive_method), as: :json
    end

    assert_response 204
  end
end
