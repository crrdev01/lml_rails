require 'rails_helper'

feature 'Story views' do

  scenario 'clicking your life sucks', js: true do
    visit root_path
    expect(page).to have_content 'I agree, your life sucks'
    expect(first('.story')).to have_content "I agree, your life sucks"
    first('.story > div > a').click
    sleep 1
    expect(first('.story > div > a')).to have_content "It definitely does!"
  end
end
