require 'spec_helper'

feature 'view the homepage' do
  scenario 'user sees relevant information' do
    visit root_path
    expect(page.title).to eq 'Flutracker'
    expect(page).to have_css '[data-role="description"]'
    expect(page).to have_a_map
  end
end

def have_a_map
  have_css '#map-canvas'
end
