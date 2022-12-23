require 'rails_helper'

RSpec.describe Expense, type: :model do
  before :each do
    @user = User.create!(id: 1, email: 'tester@tester.com', password: '123456')
    Category.create!(id: 1, name: 'Food', icon: 'Food')
  end
  let(:valid_attributes) do
    {
      id: '3',
      title: 'Chicken',
      category_id: '4',
      price: '20'
    }
  end

  subject { Expense.new valid_attributes }

  it 'is valid with a name' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is valid with a price' do
    subject.price = '20'
    expect(subject).to be_valid
  end
end
