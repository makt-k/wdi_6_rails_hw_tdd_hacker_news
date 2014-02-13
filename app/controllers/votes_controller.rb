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
    @vote= @votable.votes.new(vote_params)
    @vote.save
    redirect_to submission_path(@votable.submission_id)
  end

  def upvote
    @vote= @votable.votes.new(direction: true)
    @vote.save
    redirect_to :back
  end

  def downvote
    @vote = @votable.votes.new(direction: false)
    @vote.save
    redirect_to :back
  end

  # def vote_count
  #   up = @votable.votes.where(direction: true).count
  #   down = @votable.votes.where(direction: false).count
  #   up.to_i - down.to_i
  # end

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
