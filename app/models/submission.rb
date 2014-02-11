class Submission < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes, as: :votable

  validates :link, presence: true
  validates :description, presence: true
end
