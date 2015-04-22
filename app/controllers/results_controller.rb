class ResultsController < ApplicationController
  def index
  end

  def show
    @result = Result.find(params[:id])
    @comments = @result.comments.all.order(:id)
  end

  def new
    @result = Result.new
  end

  private

  def result_params
    params.require(:result).permit(:category, :description)
  end

end
