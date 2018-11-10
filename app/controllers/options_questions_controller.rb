class OptionsQuestionsController < ApplicationController
  before_action :set_options_question, only: [:show, :update, :destroy]

  # GET /options_questions
  def index
    @options_questions = OptionsQuestion.all

    render json: @options_questions
  end

  # GET /options_questions/1
  def show
    render json: @options_question
  end

  # GET /optionsQuestion/question_id
  def optionsQuestion
    @options_question = OptionsQuestion.where(question_id: params[:question_id])
    render json: @options_question
  end

  # POST /options_questions
  def create
    @options_question = OptionsQuestion.new(options_question_params)

    if @options_question.save
      render json: @options_question, status: :created, location: @options_question
    else
      render json: @options_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /options_questions/1
  def update
    if @options_question.update(options_question_params)
      render json: @options_question
    else
      render json: @options_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /options_questions/1
  def destroy
    @options_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_options_question
      @options_question = OptionsQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def options_question_params
      params.permit(:description_opction, :question_id, :answer, :value_option)
    end
end
