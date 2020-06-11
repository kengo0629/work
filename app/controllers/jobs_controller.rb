class JobsController < ApplicationController

  before_action :set_params, only: [:show, :edit]
  def index
    @jobs = Job.all.order("created_at DESC").limit(6)
  end

  def new
    @job = Job.new
  end

  def create
    Job.create(job_params)
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    job = Job.find(params[:id])
    job.update(job_params)
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy
  end

  def job_params
    params.require(:job).permit(:name, :text, :occupation, :image, :region, :email)
  end

  private
  def set_params
    @job = Job.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
