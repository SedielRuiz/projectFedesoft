class ApplySurveysController < ApplicationController
  before_action :set_apply_survey, only: [:show, :update, :destroy]

  # GET /apply_surveys
  def index
    @apply_surveys = ApplySurvey.all

    render json: @apply_surveys
  end

  # GET /apply_surveys/1
  def show
    render json: @apply_survey
  end

  # POST /apply_surveys
  def create
    @apply_survey = ApplySurvey.new(apply_survey_params)

    if @apply_survey.save
      render json: @apply_survey, status: :created, location: @apply_survey
    else
      render json: @apply_survey.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /apply_surveys/1
  def update
    if @apply_survey.update(apply_survey_params)
      render json: @apply_survey
    else
      render json: @apply_survey.errors, status: :unprocessable_entity
    end
  end

  # DELETE /apply_surveys/1
  def destroy
    @apply_survey.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apply_survey
      @apply_survey = ApplySurvey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def apply_survey_params
      params.require(:apply_survey).permit(:user_id, :poll_id, :number_attemps)
    end
end
