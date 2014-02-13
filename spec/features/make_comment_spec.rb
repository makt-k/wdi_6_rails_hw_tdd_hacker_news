require 'spec_helper'

feature 'Make comment' do
  scenario 'Signed-in user can make comments' do
    user = create(:user)
    comment = create(:comment, body: 'body', :user_id => user.id)
    sign_in_as(user)
    click_link 'Description and Comments'
    make(comment)

    expect(page).to have_content('Rate this comment')
  end
end
