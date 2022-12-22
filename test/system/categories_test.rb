require 'application_system_test_case'

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @category = categories(:one)
  end

  test 'visiting the index' do
    visit category_path
    assert_selector 'h1', text: 'Categories'
  end

  test 'should create category' do
    visit category_path
    click_on 'New category'

    fill_in 'Name', with: @category.name
    click_on 'Create Category'

    assert_text 'Category was successfully created'
  end

  test 'should update Category' do
    visit category_path(@category)
    click_on 'Edit this category', match: :first

    fill_in 'Name', with: @category.name
    click_on 'Update Category'

    assert_text 'Category was successfully updated'
  end

  test 'Destroy this Category' do
    visit category_path(@category)
    click_on 'Destroy this category', match: :first

    assert_text 'Category was successfully destroyed'
  end
end
