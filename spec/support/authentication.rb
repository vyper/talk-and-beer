# frozen_string_literal: true

def login_as(user)
  visit '/session/new'
  fill_in 'Enter your email address', with: user.email
  fill_in 'Enter your password', with: 'password'
  click_button 'Sign in'
end
