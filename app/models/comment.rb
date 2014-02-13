class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission
  has_many :votes, as: :votable

  validates :body, presence: true

  def vote_count
    self.votes.count -  self.votes.where(direction: false).count
  end

end
