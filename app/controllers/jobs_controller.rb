class JobsController < ApplicationController
  def index
    jobs = Job.all
    render json: jobs
  end

  def create
    job = Job.new(job_params)
    if job.save
      render json: job, status: 200
    else
      render json: { message: "401 Bad Request" }, status: 401
    end
  end

  def show
    job = Job.find(params[:id])

    render json: job
  end

  def job_params
      params.require(:job).permit(:title, :content, :category)
  end
end
