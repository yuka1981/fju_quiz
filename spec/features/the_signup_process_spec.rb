# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'The signup process', type: :feature, js: true do
  it 'sign me up' do
    visit 'users/sign_up'

    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'

    expect(page).to have_content 'You have signed up successfully.'
  end
end
