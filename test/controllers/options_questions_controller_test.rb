require 'test_helper'

class OptionsQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @options_question = options_questions(:one)
  end

  test "should get index" do
    get options_questions_url, as: :json
    assert_response :success
  end

  test "should create options_question" do
    assert_difference('OptionsQuestion.count') do
      post options_questions_url, params: { options_question: { answer: @options_question.answer, description_opction: @options_question.description_opction, question_id: @options_question.question_id } }, as: :json
    end

    assert_response 201
  end

  test "should show options_question" do
    get options_question_url(@options_question), as: :json
    assert_response :success
  end

  test "should update options_question" do
    patch options_question_url(@options_question), params: { options_question: { answer: @options_question.answer, description_opction: @options_question.description_opction, question_id: @options_question.question_id } }, as: :json
    assert_response 200
  end

  test "should destroy options_question" do
    assert_difference('OptionsQuestion.count', -1) do
      delete options_question_url(@options_question), as: :json
    end

    assert_response 204
  end
end
