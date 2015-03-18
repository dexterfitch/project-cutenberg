require 'rails_helper'

describe "the add a book process" do
  it "takes you to a new chapter page" do
    visit "/"
    click_on "Add an author"
    fill_in "First Name", :with=>"J.R."
    fill_in "Middle Initial", :with=>"R."
    fill_in "Last Name", :with=>"Tolkien"
    click_on "Create Author"
    click_on "Tolkien"
    click_on "Add a book"
    expect(page).to have_content "New Book"
  end

  it "adds a new book" do
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
    expect(page).to have_content "Books"
  end

  it "gives an error when no title is entered" do
    visit "/"
    click_on "Add an author"
    fill_in "First Name", :with=>"J.R."
    fill_in "Middle Initial", :with=>"R."
    fill_in "Last Name", :with=>"Tolkien"
    click_on "Create Author"
    click_on "Tolkien"
    click_on "Add a book"
    fill_in "Summary", :with=>"Something about a ring, I think."
    click_on "Create Book"
    expect(page).to have_content 'Oops'
  end

  it "gives an error when no summary is entered" do
    visit "/"
    click_on "Add an author"
    fill_in "First Name", :with=>"J.R."
    fill_in "Middle Initial", :with=>"R."
    fill_in "Last Name", :with=>"Tolkien"
    click_on "Create Author"
    click_on "Tolkien"
    click_on "Add a book"
    fill_in "Title", :with=> "The Fellowship of the Ring"
    click_on "Create Book"
    expect(page).to have_content 'Oops'
  end
end
