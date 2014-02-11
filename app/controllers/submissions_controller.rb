class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def new
    @submission = Submission.new
  end

  def create
    redirect_to :root
  end

end
