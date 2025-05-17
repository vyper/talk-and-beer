# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Navigation', type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'renders name with link to root' do
    visit '/'

    expect(page).to have_link('Talk and Beer', href: '/')
  end

  it 'renders link to login' do
    visit '/'

    expect(page).to have_link('Login', href: '/session/new')
  end

  context 'when logged in' do
    fixtures :users

    before { login_as users(:one) }

    it 'renders link to logout' do
      visit '/'

      expect(page).to have_link('Logout', href: '/session')
    end
  end
end
