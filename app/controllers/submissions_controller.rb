class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    @submission.user_id = current_user.id
    Submission.all << @submission.save
    redirect_to :root
  end

  def show
    @submission = Submission.find(params[:id])
  end

  private

  def submission_params
    params.require(:submission).permit(:link, :description, :id, :user_id)
  end


end
