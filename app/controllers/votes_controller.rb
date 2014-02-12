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
    Vote.create!(vote_params)
    redirect_to @votable
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
