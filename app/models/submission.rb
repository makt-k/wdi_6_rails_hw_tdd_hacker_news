class Submission < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :link, presence: true
  validates :description, presence: true
end
