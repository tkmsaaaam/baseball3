# frozen_string_literal: true

require 'application_system_test_case'

class ActnessesTest < ApplicationSystemTestCase
  setup do
    @actness = actnesses(:one)
  end

  test 'visiting the index' do
    visit actnesses_url
    assert_selector 'h1', text: 'Actnesses'
  end

  test 'creating a Actness' do
    visit actnesses_url
    click_on 'New Actness'

    fill_in 'Situation', with: @actness.Situation_id
    check 'Ball' if @actness.ball
    fill_in 'Ball strike', with: @actness.ball_strike
    fill_in 'Ball type', with: @actness.ball_type
    check 'Foul' if @actness.foul
    check 'Strike' if @actness.strike
    check 'Swing' if @actness.swing
    click_on 'Create Actness'

    assert_text 'Actness was successfully created'
    click_on 'Back'
  end

  test 'updating a Actness' do
    visit actnesses_url
    click_on 'Edit', match: :first

    fill_in 'Situation', with: @actness.Situation_id
    check 'Ball' if @actness.ball
    fill_in 'Ball strike', with: @actness.ball_strike
    fill_in 'Ball type', with: @actness.ball_type
    check 'Foul' if @actness.foul
    check 'Strike' if @actness.strike
    check 'Swing' if @actness.swing
    click_on 'Update Actness'

    assert_text 'Actness was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Actness' do
    visit actnesses_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Actness was successfully destroyed'
  end
end
