require 'rails_helper'

describe "the edit a chapter process" do
  it "takes you to an edit chapter page" do
    visit "/chapters"
    click_on "Add a chapter"
    fill_in "Number", :with =>"2"
    fill_in "Title", :with=>"The Council of Elrond"
    fill_in "Body", :with=>"Next day Frodo woke early..."
    click_on "Create Chapter"
    click_on "The Council"
    click_on "Edit"
    # find("#edit").click
    # Why isn't that working?
    expect(page).to have_content "Edit Chapter"
  end

  it "edits a chapter chapter" do
    visit "/chapters"
    click_on "Add a chapter"
    fill_in "Number", :with =>"2"
    fill_in "Title", :with=>"The Council of Elrond"
    fill_in "Body", :with=>"Next day Frodo woke early..."
    click_on "Create Chapter"
    click_on "The Council"
    click_on "Edit"
    fill_in "Number", :with =>"3"
    fill_in "Title", :with=>"The Ring Goes South"
    fill_in "Body", :with=>"Later that day the hobbits held a meeting of their own..."
    click_on "Update Chapter"
    expect(page).to have_content "edited"
  end

  it "gives an error when no number is entered" do
    visit "/chapters"
    click_on "Add a chapter"
    fill_in "Number", :with =>"2"
    fill_in "Title", :with=>"The Council of Elrond"
    fill_in "Body", :with=>"Next day Frodo woke early..."
    click_on "Create Chapter"
    click_on "The Council"
    click_on "Edit"
    fill_in "Number", :with =>""
    fill_in "Title", :with=>"The Ring Goes South"
    fill_in "Body", :with=>"Later that day the hobbits held a meeting of their own..."
    click_on "Update Chapter"
    expect(page).to have_content 'Oops'
  end

  it "gives an error when no title is entered" do
    visit "/chapters"
    click_on "Add a chapter"
    fill_in "Number", :with =>"2"
    fill_in "Title", :with=>"The Council of Elrond"
    fill_in "Body", :with=>"Next day Frodo woke early..."
    click_on "Create Chapter"
    click_on "The Council"
    click_on "Edit"
    fill_in "Number", :with =>"3"
    fill_in "Title", :with=>""
    fill_in "Body", :with=>"Later that day the hobbits held a meeting of their own..."
    click_on "Update Chapter"
    expect(page).to have_content 'Oops'
  end

  it "gives an error when no body is entered" do
    visit "/chapters"
    click_on "Add a chapter"
    fill_in "Number", :with =>"2"
    fill_in "Title", :with=>"The Council of Elrond"
    fill_in "Body", :with=>"Next day Frodo woke early..."
    click_on "Create Chapter"
    click_on "The Council"
    click_on "Edit"
    fill_in "Number", :with =>"3"
    fill_in "Title", :with=>"The Ring Goes South"
    fill_in "Body", :with=>""
    click_on "Update Chapter"
    expect(page).to have_content 'Oops'
  end
end
