module SessionHelpers
  def sign_in_as(user)
    visit root_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end

  def post(submission)
    click_link 'New Submission'
    fill_in 'Link', with: submission.link
    fill_in 'Description', with: submission.description
    click_on 'Post'
  end
end
