require 'application_system_test_case'

class TreksTest < ApplicationSystemTestCase
  setup do
    @trek = treks(:one)
  end

  test 'visiting the index' do
    visit treks_url
    assert_selector 'h1', text: 'Treks'
  end

  test 'should create trek' do
    visit treks_url
    click_on 'New trek'

    fill_in 'Address', with: @trek.address
    fill_in 'Auto', with: @trek.auto_id
    fill_in 'Store', with: @trek.store
    fill_in 'Trek date', with: @trek.trek_date
    click_on 'Create Trek'

    assert_text 'Trek was successfully created'
    click_on 'Back'
  end

  test 'should update Trek' do
    visit trek_url(@trek)
    click_on 'Edit this trek', match: :first

    fill_in 'Address', with: @trek.address
    fill_in 'Auto', with: @trek.auto_id
    fill_in 'Store', with: @trek.store
    fill_in 'Trek date', with: @trek.trek_date
    click_on 'Update Trek'

    assert_text 'Trek was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Trek' do
    visit trek_url(@trek)
    click_on 'Destroy this trek', match: :first

    assert_text 'Trek was successfully destroyed'
  end
end
