require 'rails_helper'

RSpec.describe 'Login page', type: :feature do
  before(:each) do
    User.create!(name: 'Tom', photo: 'photo.jpg', bio: 'Teacher from Mexico.', email: 'to@example.com',
                 password: 'password', confirmed_at: Time.now)
    visit user_session_path
  end

  it 'I can see the username and password inputs and the Submit button.' do
    expect(page).to have_field(type: 'email')
    expect(page).to have_field(type: 'password')
    expect(page).to have_button(type: 'submit')
  end

  it 'Show error when submit with Empty fields' do
    fill_in 'Email', with: ' '
    fill_in 'Password', with: ' '
    click_button 'Log in'

    expect(page).to have_content('Invalid Email or password.')
  end

  it 'Show error when submit with wrong fields values' do
    fill_in 'Email', with: 'wrong'
    fill_in 'Password', with: 'wrong'
    click_button 'Log in'
    expect(page).to have_current_path(user_session_path)
    expect(page).to have_content('Invalid Email or password.')
  end
  # rubocop:disable Layout/LineLength
  it 'When I click the submit button after filling in the username and the password with correct data, I am redirected to the root page.' do
    fill_in 'Email',	with: 'to@example.com'
    fill_in 'Password',	with: 'password'
    click_on 'Log in'
    expect(current_path).to eq root_path
  end
  # rubocop:enable Layout/LineLength
end
