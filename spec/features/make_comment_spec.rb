require 'spec_helper'

feature 'Make comment' do
  scenario 'Signed-in user can make comments' do
    user = create(:user)
    submission = create(:submission)
    comment = create(:comment, body: 'body', :submission_id => submission.id, :user_id => user.id)
    sign_in_as(user)
    click_link 'Description and Comments'
    make(comment)

    expect(page).to have_content('points')
  end
end
