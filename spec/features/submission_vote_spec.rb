require 'spec_helper'
feature 'Allow users to vote on submissions' do
  scenario 'User can upvote' do
    user = create(:user)
    comment = create(:comment, body: 'body', :user_id => user.id)
    sign_in_as(user)
    click_link 'Description and Comments'
    click_link 'Up Vote'

    expect(page).to have_content('Upvotes')
  end
end
