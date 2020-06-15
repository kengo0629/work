class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def create
    @request = Request.new
    Request.create(request_params)
    redirect_to action: :index
  end

  private
  def request_params
    params.require(:request).permit(:name, :image, :text).merge(user_id: current_user.id)
  end
end
