# frozen_string_literal: true

require 'application_system_test_case'

class SituationsTest < ApplicationSystemTestCase
  setup do
    @situation = situations(:one)
  end

  test 'visiting the index' do
    visit situations_url
    assert_selector 'h1', text: 'Situations'
  end

  test 'creating a Situation' do
    visit situations_url
    click_on 'New Situation'

    fill_in 'Game', with: @situation.Game_id
    fill_in 'Bat counts', with: @situation.bat_counts
    fill_in 'Inings', with: @situation.inings
    click_on 'Create Situation'

    assert_text 'Situation was successfully created'
    click_on 'Back'
  end

  test 'updating a Situation' do
    visit situations_url
    click_on 'Edit', match: :first

    fill_in 'Game', with: @situation.Game_id
    fill_in 'Bat counts', with: @situation.bat_counts
    fill_in 'Inings', with: @situation.inings
    click_on 'Update Situation'

    assert_text 'Situation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Situation' do
    visit situations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Situation was successfully destroyed'
  end
end
