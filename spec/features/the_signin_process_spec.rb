# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'The signin process', type: :feature, js: true do
  before do
    User.create(email: 'user@example.com', password: 'password', is_admin: false)
  end

  it 'sign me in' do
    visit 'users/sign_in'

    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'

    click_button 'Log in'

    expect(page).to have_content 'Signed in successfully'
  end
end
