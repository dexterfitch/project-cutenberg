# require 'rails_helper'
#
# describe "the add a chapter process" do
#   it "takes you to a new chapter page" do
#     visit "/chapters"
#     click_on "Add a chapter"
#     expect(page).to have_content "New Chapter"
#   end
#
#   it "adds a new chapter" do
#     visit "/chapters"
#     click_on "Add a chapter"
#     fill_in "Number", :with =>"2"
#     fill_in "Title", :with=>"The Council of Elrond"
#     fill_in "Body", :with=>"Next day Frodo woke early..."
#     click_on "Create Chapter"
#     expect(page).to have_content "Chapters"
#   end
#
#   it "gives an error when no number is entered" do
#     visit "/chapters"
#     click_on "Add a chapter"
#     fill_in "Title", :with=>"The Council of Elrond"
#     fill_in "Body", :with=>"Next day Frodo woke early..."
#     click_on "Create Chapter"
#     expect(page).to have_content 'Oops'
#   end
#
#   it "gives an error when no title is entered" do
#     visit "/chapters"
#     click_on "Add a chapter"
#     fill_in "Number", :with =>"2"
#     fill_in "Body", :with=>"Next day Frodo woke early..."
#     click_on "Create Chapter"
#     expect(page).to have_content 'Oops'
#   end
#
#   it "gives an error when no body is entered" do
#     visit "/chapters"
#     click_on "Add a chapter"
#     fill_in "Number", :with =>"2"
#     fill_in "Title", :with=>"The Council of Elrond"
#     click_on "Create Chapter"
#     expect(page).to have_content 'Oops'
#   end
# end
