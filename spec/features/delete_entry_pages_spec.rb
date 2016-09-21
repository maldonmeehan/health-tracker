require 'rails_helper'

describe "the delete an entry process" do
  it "deltes an entry" do
    entry = FactoryGirl.create(:entry)
    visit entries_path
    click_on "2016-09-21"
    click_on "Delete Entry"
    expect(page).to have_content "Entry successfully deleted!"
  end
end