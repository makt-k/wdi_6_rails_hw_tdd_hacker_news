class VotesController < ApplicationController
  before_action :set_votable
  before_action :set_vote, only: [:show, :edit, :update, :destroy]
  before_action :unique_vote, only: [:upvote, :downvote]

  def index
    @votes = Vote.all
  end

  # duplicate code & long method
  def upvote
    @vote[:direction] = true
    @vote.save!
    redirect_to :back
  end

 # duplicate code & long method
  def downvote
    @vote[:direction] = false
    @vote.save!
    redirect_to :back
  end

  private

# extract method
  def unique_vote
    @vote = @votable.votes.find_or_create_by(:user_id => current_user.id)
  end

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
