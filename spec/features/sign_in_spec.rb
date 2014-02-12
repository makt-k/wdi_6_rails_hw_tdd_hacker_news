require 'spec_helper'

feature 'Sign_in' do

  scenario "User can sign in" do
    user = create(:user)
    sign_in_as(user)

    expect(page).to have_content("#{user.email}")
    expect(page).to have_link('New Submission')
    expect(page).to have_link('Sign Out')
  end
end
