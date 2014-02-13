class VotesController < ApplicationController
  before_action :set_votable
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  def index
    @votes = Vote.all
  end

  def new
    @vote = Vote.new
  end

  def create
    @vote = @votable.votes.find_or_create_by(:user_id => current_user.id)
    @vote.save!
    redirect_to submission_path(@votable.submission_id)
  end

  def upvote
    @vote = @votable.votes.find_or_create_by(:user_id => current_user.id)
    @vote[:direction] = true
    @vote.save!
    redirect_to :back
  end

  def downvote
    @vote = @votable.votes.find_or_create_by(:user_id => current_user.id)
    @vote[:direction] = false
    @vote.save!
    redirect_to :back
  end

  private

  def set_vote
    @vote = Vote.find(params[:id])
  end

  def set_votable
    @votable = params[:votable].classify.constantize.find(votable_id)
  end

  def votable_id
    params[(params[:votable] + "_id").to_sym]
  end

  def vote_params
    params.require(:vote).permit(:direction)
  end

end
