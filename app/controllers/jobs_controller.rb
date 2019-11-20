class JobsController < ApplicationController
  before_action :set_job, only: [:show]

  def index
    @jobs = Job.all
  end

  def show
    @job
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
    else
      render :new
    end
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :school, :salary, :description)
  end
end
