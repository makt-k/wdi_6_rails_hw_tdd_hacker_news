require 'spec_helper'

feature 'Sign_up' do

  scenario 'New users can register' do
    visit new_user_registration_path
    expect(page).to have_content('Sign up')
    fill_in 'Email', with: 'paul@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign up'
    expect(page).to have_content('Submissions')
  end
end
