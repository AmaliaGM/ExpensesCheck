require 'rails_helper'

RSpec.describe 'users/show', type: :view do
  before(:each) do
    assign(:user, User.create!(
                    name: 'MyText'
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/MyText/)
  end
end
