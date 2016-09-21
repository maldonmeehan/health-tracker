require 'rails_helper'

describe "the add an entry process" do
  it "adds an entry" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit entries_path
    click_link "New Entry"
    fill_in "Day", with: '2016/09/21'
    click_button "Create Entry"
    expect(page).to have_content "Entry successfully added!"
  end

  it "it gives an error when day is entered for entry" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)    
    visit entries_path
    click_link "New Entry"
    fill_in "Day", with: ''
    click_button "Create Entry"
    expect(page).to have_content "errors"
  end
end
