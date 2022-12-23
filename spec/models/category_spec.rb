require 'rails_helper'

RSpec.describe Category, type: :model do
      
    let(:valid_attributes) do
      {
        name: 'Groceries',
        icon: 'GroceriesIcon',
        id: '2'
      }
    end
  
    subject { Category.new valid_attributes }
  
    it 'is valid with a name' do
      subject.name = "Groceries"
      expect(subject).to be_valid
    end
  
    it 'is valid with an icon' do
      subject.icon = "GroceriesIcon"
      expect(subject).to be_valid
    end
  
    it 'is valid with an id' do
      subject.id = '2'
      expect(subject).to be_valid
    end
end
  