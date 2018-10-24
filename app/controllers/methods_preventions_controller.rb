class MethodsPreventionsController < ApplicationController
  before_action :set_methods_prevention, only: [:show, :update, :destroy]

  # GET /methods_preventions
  def index
    @methods_preventions = MethodsPrevention.all

    render json: @methods_preventions
  end

  # GET /methods_preventions/1
  def show
    render json: @methods_prevention
  end

  # POST /methods_preventions
  def create
    @methods_prevention = MethodsPrevention.new(methods_prevention_params)

    if @methods_prevention.save
      render json: @methods_prevention, status: :created, location: @methods_prevention
    else
      render json: @methods_prevention.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /methods_preventions/1
  def update
    if @methods_prevention.update(methods_prevention_params)
      render json: @methods_prevention
    else
      render json: @methods_prevention.errors, status: :unprocessable_entity
    end
  end

  # DELETE /methods_preventions/1
  def destroy
    @methods_prevention.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_methods_prevention
      @methods_prevention = MethodsPrevention.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def methods_prevention_params
      params.require(:methods_prevention).permit(:name_method, :description_method, :duration_method, :type_duration, :recommendations_method)
    end
end
