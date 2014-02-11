require 'spec_helper'

feature 'Make comment' do
  scenario 'Signed-in user can make comments' do
    user = create(:user)
    submission = create(:submission, user: user)
    comment = create(:comment, body: 'body', user: user, submission: submission)
    sign_in_as(user)
    make(comment)

  end

end
