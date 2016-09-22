require 'rails_helper'

describe "the delete an entry process" do
  it "deltes an entry" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit entries_path
    click_link "New Entry"
    fill_in "Day", with: '2016/09/21'
    click_button "Create Entry"
    visit entries_path
    click_on "2016-09-21"
    click_on "Delete Entry"
    expect(page).to have_content "Entry successfully deleted!"
  end
end
