# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Sign in', type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'renders name with link to root' do
    visit '/session/new'

    expect(page).to have_link('Talk and Beer', href: '/')
  end

  it 'renders error for wrong credentials' do
    visit '/session/new'

    fill_in 'Email', with: 'wrong@example.com'
    fill_in 'Password', with: 'wrong'
    click_button 'Sign in'

    expect(page).to have_content('Try another email address or password.')
  end

  it 'renders link to recover password' do
    visit '/session/new'

    expect(page).to have_link('Forgot password?', href: '/passwords/new')
  end

  context 'when logged in' do
    fixtures :users

    it 'redirects to root in successful sign in' do
      visit '/session/new'

      fill_in 'Email', with: 'one@example.com'
      fill_in 'Password', with: 'password'
      click_button 'Sign in'

      expect(page).to have_current_path('/')
    end
  end
end
