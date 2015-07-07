require 'rails_helper'

feature 'Story views' do
  scenario 'clicking your life rocks', js: true do
    skip
    visit root_path
    expect(page).to have_content 'I agree, your life rocks'
    expect(first('.story')).to have_content "I agree, your life rocks"
    first('.story > div > a').click
    sleep 1
    expect(first('.story > div > a')).to have_content "It definitely does!"
  end
end
