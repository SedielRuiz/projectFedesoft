class RiskMethodsController < ApplicationController
  before_action :set_risk_method, only: [:show, :update, :destroy]

  # GET /risk_methods
  def index
    @risk_methods = RiskMethod.all

    render json: @risk_methods
  end

  # GET /risk_methods/1
  def show
    render json: @risk_method
  end

  # POST /risk_methods
  def create
    @risk_method = RiskMethod.new(risk_method_params)

    if @risk_method.save
      render json: @risk_method, status: :created, location: @risk_method
    else
      render json: @risk_method.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /risk_methods/1
  def update
    if @risk_method.update(risk_method_params)
      render json: @risk_method
    else
      render json: @risk_method.errors, status: :unprocessable_entity
    end
  end

  # DELETE /risk_methods/1
  def destroy
    @risk_method.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_risk_method
      @risk_method = RiskMethod.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def risk_method_params
      params.require(:risk_method).permit(:risk_id, :method_prevention_id)
    end
end
