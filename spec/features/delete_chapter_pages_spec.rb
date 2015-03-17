require 'rails_helper'

describe "the delete a chapter process" do
  it "takes you to a chapter page and deletes it" do
    visit "/chapters"
    click_on "Add a chapter"
    fill_in "Number", :with =>"2"
    fill_in "Title", :with=>"The Council of Elrond"
    fill_in "Body", :with=>"Next day Frodo woke early..."
    click_on "Create Chapter"
    click_on "The Council"
    click_on "Delete"
    expect(page).to have_content "deleted"
  end
end
