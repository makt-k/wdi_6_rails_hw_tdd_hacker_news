require 'spec_helper'

feature 'Make comment' do
  scenario 'Signed-in user can make comments' do
    user = create(:user)
    comment = create(:comment, body: 'body', :user_id => user.id)
    sign_in_as(user)
    click_link 'View Comments'
    make(comment)
    expect(page).to have_content('body')
  end
end
