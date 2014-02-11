class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission

  validates :user_id, presence: true
  validates :submission_id, presence: true
  validates :body, presence: true
end
