require 'spec_helper'

feature 'visitor can enter a location' do
  scenario 'and see the results' do
    visit root_path

    fill_in 'location_query', with: 'Boston'
    click_button 'Am I Safe?'

    expect(page).to have_css '[data-role="flu-level"]', text: '5'
  end
end
