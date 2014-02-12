class CommentsController < ApplicationController

  before_action :get_submission
  before_action :get_user


  def index
    @comments = Comment.all
    redirect_to submission_path(@submission.id)
  end

  def new
    @comment = Comment.new
  end

  def create
    Comment.all << Comment.create!(comment_params)
    redirect_to submission_path(@submission.id)
  end

  def show
    @comment = Comment.find(params[:id])
  end

private
  def comment_params
    params.require(:comment).permit(:body, :id, :user_id, :submission_id)
  end

  def get_user
    @user = User.find(params[:user_id]) if params.key?(:user_id)
  end

  def get_submission
    @submission = Submission.find(params[:submission_id]) if params.key?(:submission_id)
  end

end
