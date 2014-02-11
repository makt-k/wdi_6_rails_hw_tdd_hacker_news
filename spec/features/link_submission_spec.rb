require 'spec_helper'

feature 'Link submission' do

  scenario 'Signed-in user can submit links' do
    user = create(:user)
    submission = create(:submission, user: user)
    sign_in_as(user)
    post(submission)
    expect(page).to have_content('implant')
  end
end
