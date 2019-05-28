class ExchangesController < ApplicationController
  def index
  end

  def convert
    result = ExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).perform
    render json: {"value": result}
  end
end
