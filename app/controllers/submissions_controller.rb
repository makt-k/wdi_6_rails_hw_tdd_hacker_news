class SubmissionsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :new, :create]

  def index
    @submissions = Submission.all
  end

  def new
    @submission = Submission.new
  end

  def create
    Submission.all << Submission.create(submission_params)
  end

  private
  def submission_params
    require.params(:submission).permit(:link, :description, :user_id, :id)
  end

end
