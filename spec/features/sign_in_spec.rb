require 'spec_helper'

feature 'Sign_in' do

  background do @user = User.create!(email: 'karen@example.com', password: 'password')
  end

  scenario "User can sign in" do
    visit new_user_session_path
    fill_in "Email", with: 'karen@example.com'
    fill_in "Password", with: 'password'
    click_on "Sign in"
    expect(page).to have_content('karen@example.com')
  end
end
