class JobsController < ApplicationController
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
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:name, :text, :occupation, :image, :region, :email)
  end
end
