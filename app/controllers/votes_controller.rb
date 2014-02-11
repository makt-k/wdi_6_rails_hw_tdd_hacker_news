class VotesController < ApplicationController
  before_action :set_votable

private

    def set_votable
      @votable = params[:votable].classify.constantize.find(votable_id)
    end

    def votable_id
      params[(params[:votable] + "_id").to_sym]
    end

end
