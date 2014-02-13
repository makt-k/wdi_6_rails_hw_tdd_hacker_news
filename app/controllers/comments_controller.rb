class CommentsController < ApplicationController
  before_action :get_submission


  def new
    @submission = Submission.find(params[:submission_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.submission_id = params[:submission_id]
    @comment.id = params[:comment_id]
    @comment.save
    redirect_to submission_path(@comment.submission_id)
  end


  private
  def get_submission
    @submission = Submission.find(params[:submission_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
