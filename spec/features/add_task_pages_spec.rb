require 'rails_helper'

describe "add a task pathway process" do
  it "adds a new task" do
    list = List.create(:name => "List name")
    visit list_path(list)
    click_link 'Add task'
    fill_in 'Description', :with => "task stuff"
    click_on 'Create Task'
    expect(page).to have_content 'task stuff'
  end

  it "gives error when no description is entered" do
    list = List.create(:name => "Big List")
    visit list_path(list)
    click_link 'Add task'
    fill_in 'Description', :with => ""
    click_on 'Create Task'
    expect(page).to have_content 'errors'
   end
end
