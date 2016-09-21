require 'rails_helper'

describe "the add an entry process" do
  it "adds an activity" do
    visit entries_path
    click_link "New Entry"
    fill_in "Day", with: '2016/09/21'
    click_button "Create Entry"
    expect(page).to have_content "Entry successfully added!"
  end
end
