require 'rails_helper'

describe "the delete a chapter process" do
  it "takes you to a chapter page and deletes it" do
    visit "/"
    click_on "Add an author"
    fill_in "First Name", :with=>"J.R."
    fill_in "Middle Initial", :with=>"R."
    fill_in "Last Name", :with=>"Tolkien"
    click_on "Create Author"
    click_on "Tolkien"
    click_on "Add a book"
    fill_in "Title", :with=> "The Fellowship of the Ring"
    fill_in "Summary", :with=>"Something about a ring, I think."
    click_on "Create Book"
    click_on "Fellowship"
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
