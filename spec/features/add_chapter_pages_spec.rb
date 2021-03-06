require 'rails_helper'

describe "the add a chapter process" do
  it "takes you to a new chapter page" do
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
    expect(page).to have_content "New Chapter"
  end

  it "adds a new chapter" do
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
    expect(page).to have_content "Chapters"
  end

  it "gives an error when no number is entered" do
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
    fill_in "Title", :with=>"The Council of Elrond"
    fill_in "Body", :with=>"Next day Frodo woke early..."
    click_on "Create Chapter"
    expect(page).to have_content 'Oops'
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
    fill_in "Title", :with=> "The Fellowship of the Ring"
    fill_in "Summary", :with=>"Something about a ring, I think."
    click_on "Create Book"
    click_on "Fellowship"
    click_on "Add a chapter"
    fill_in "Number", :with =>"2"
    fill_in "Body", :with=>"Next day Frodo woke early..."
    click_on "Create Chapter"
    expect(page).to have_content 'Oops'
  end

  it "gives an error when no body is entered" do
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
    click_on "Create Chapter"
    expect(page).to have_content 'Oops'
  end
end
