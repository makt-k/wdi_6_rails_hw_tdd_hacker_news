require 'spec_helper'

feature 'Sign_up' do

  scenario 'New users can register' do
    visit new_user_registration_path
    expect(page).to have_content('Sign up')
  end
end
