require 'test_helper'

class ApplySurveysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apply_survey = apply_surveys(:one)
  end

  test "should get index" do
    get apply_surveys_url, as: :json
    assert_response :success
  end

  test "should create apply_survey" do
    assert_difference('ApplySurvey.count') do
      post apply_surveys_url, params: { apply_survey: { number_attemps: @apply_survey.number_attemps, poll_id: @apply_survey.poll_id, user_id: @apply_survey.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show apply_survey" do
    get apply_survey_url(@apply_survey), as: :json
    assert_response :success
  end

  test "should update apply_survey" do
    patch apply_survey_url(@apply_survey), params: { apply_survey: { number_attemps: @apply_survey.number_attemps, poll_id: @apply_survey.poll_id, user_id: @apply_survey.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy apply_survey" do
    assert_difference('ApplySurvey.count', -1) do
      delete apply_survey_url(@apply_survey), as: :json
    end

    assert_response 204
  end
end
