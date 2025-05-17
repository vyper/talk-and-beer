# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Forgot password', type: :system do
  fixtures :users

  before { driven_by(:rack_test) }

  describe 'Request password reset' do
    it 'redirects to sign in' do
      visit '/passwords/new'

      fill_in 'Email', with: 'one@example.com'
      click_button 'Send email with reset instructions'

      expect(page).to have_current_path('/session/new')
    end

    it 'renders successful message' do
      visit '/passwords/new'

      fill_in 'Email', with: 'one@example.com'
      click_button 'Send email with reset instructions'

      expect(page).to have_content('Password reset instructions sent (if user with that email address exists).')
    end

    it 'deliveries email when user exists' do
      visit '/passwords/new'

      fill_in 'Email', with: 'one@example.com'

      expect { click_button 'Send email with reset instructions' }.to have_enqueued_job.exactly(1).times
    end

    it 'does not deliver email when user not exists' do
      visit '/passwords/new'

      fill_in 'Email', with: 'not-found@example.com'

      expect { click_button 'Send email with reset instructions' }.not_to have_enqueued_job
    end
  end

  describe 'Update password' do
    it 'renders successful message' do
      visit "/passwords/#{users(:one).password_reset_token}/edit"

      fill_in 'Password', with: '123456'
      fill_in 'Password confirmation', with: '123456'
      click_button 'Save'

      expect(page).to have_content('Password has been reset.')
    end

    it 'redirects to sign in' do
      visit "/passwords/#{users(:one).password_reset_token}/edit"

      fill_in 'Password', with: '123456'
      fill_in 'Password confirmation', with: '123456'
      click_button 'Save'

      expect(page).to have_current_path('/session/new')
    end

    it 'renders error message when token is invalid' do
      visit '/passwords/invalid-token/edit'

      expect(page).to have_content('Password reset link is invalid or has expired.')
    end

    it 'renders error message when passwords does not match' do
      visit "/passwords/#{users(:one).password_reset_token}/edit"

      fill_in 'Password', with: 'new-password'
      fill_in 'Password confirmation', with: 'new-password-mismatch'
      click_button 'Save'

      expect(page).to have_content('Passwords did not match')
    end
  end
end
