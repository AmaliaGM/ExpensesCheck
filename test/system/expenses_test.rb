require 'application_system_test_case'

class ExpensesTest < ApplicationSystemTestCase
  setup do
    @expense = expenses(:one)
  end

  test 'visiting the index' do
    visit expenses_path
    assert_selector 'h1', text: 'Expenses'
  end

  test 'should create expense' do
    visit expense_path
    click_on 'Add expense'

    fill_in 'Price', with: @expense.price
    fill_in 'Title', with: @expense.title
    click_on 'Create Expense'

    assert_text 'Expense was successfully created'
  end

  test 'should update Expense' do
    visit expense_path(@expense)
    click_on 'Edit this expense', match: :first

    fill_in 'Price', with: @expense.price
    fill_in 'Title', with: @expense.title
    click_on 'Update Expense'

    assert_text 'Expense was successfully updated'
  end

  test 'should destroy Expense' do
    visit expense_path(@expense)
    click_on 'Destroy this expense', match: :first

    assert_text 'Expense was successfully destroyed'
  end
end
