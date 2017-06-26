require 'rails_helper'

describe "the delete a task process" do
  it "deletes an existing task" do
    list = List.create(:name => "Do Stuff")
    task = Task.create(:description => 'Task stuff', :list_id => list.id)
    visit list_path(list)
    click_link 'Delete'
    expect(page).to have_content 'Add task'
  end
end
