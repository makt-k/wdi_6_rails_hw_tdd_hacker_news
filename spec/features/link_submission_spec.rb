require 'spec_helper'

feature 'Link submission' do


  scenario 'Signed in user can submit links' do
    visit root_path
    click_link 'New Submission'
    fill_in 'Link', with: 'http://www.bbc.com/future/story/20140209-why-i-want-a-microchip-implant'
    fill_in 'Description', with: 'With a chip under your skin, you can do everything from unlocking doors to starting motorbikes, says Frank Swain, who has been trying to get his own implant.'
  end
end
