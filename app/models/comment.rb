class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission
  has_many :votes, as: :votable

  validates :body, presence: true
end
