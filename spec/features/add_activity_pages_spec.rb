require 'rails_helper'

describe "the add an activity process" do
  it "adds an activity" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit entries_path
    click_link "New Entry"
    fill_in "Day", with: '2016/09/21'
    click_button "Create Entry"
    click_link "2016-09-21"
    click_link 'Add an Activity'
    fill_in "Step", :with => "7890"
    fill_in "Calorie", :with => "1234"
    fill_in "Minute", :with => "123"
    click_button "Create Activity"
    expect(page).to have_content "Your activity has been added!"
  end

  it "gives an error when step is left blank for an activity." do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit entries_path
    click_link "New Entry"
    fill_in "Day", with: '2016/09/21'
    click_button "Create Entry"
    click_link "2016-09-21"
    click_link 'Add an Activity'
    fill_in "Step", :with => ""
    fill_in "Calorie", :with => "1234"
    fill_in "Minute", :with => "123"
    click_button "Create Activity"
    expect(page).to have_content "errors"
  end

end
