require 'spec_helper'

feature 'View submission with comments' do
  scenario 'User can view all comments for a specific submission' do
    user = create(:user)
    submission = create(:submission, :user_id => user.id, :id => 7)
    sign_in_as(user)
    click_on 'Description and Comments'

    expect(page).to have_link('New Comment')
  end
end
