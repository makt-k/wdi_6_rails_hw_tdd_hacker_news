class SubmissionsController < ApplicationController

  before_action :get_user

  def index
    @submissions = Submission.all
  end

  def new
    @submission = Submission.new
  end

  def create
    Submission.all << Submission.create!(submission_params)
    redirect_to :root
  end

  private
  def submission_params
    params.require(:submission).permit(:link, :description, :id, :user_id)
  end

  def get_user
    user = current_user
  end

end
