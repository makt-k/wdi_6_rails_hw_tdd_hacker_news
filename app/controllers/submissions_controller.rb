class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all.sort! { |x, y| y.vote_count <=> x.vote_count }
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
    @comments = @submission.comments.all.sort! { |x, y| y.vote_count <=> x.vote_count }
  end

  private

  def submission_params
    params.require(:submission).permit(:link, :description)
  end
end

