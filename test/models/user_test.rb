require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test 'visiting the index' do
    visit users_url
    assert_selector 'h1', text: 'Users'
  end

  test 'should create user' do
    visit users_url
    click_on 'New user'

    fill_in 'Name', with: @user.name
    click_on 'Create User'

    assert_text 'User was successfully created'
    click_on 'Back'
  end

end
