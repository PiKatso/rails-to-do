require 'rails_helper'

describe "the delete a list process" do
  it "deletes an existing list" do
    list = List.create(:name => 'Home stuff')
    visit list_path(list)
    click_link 'Delete List'
    expect(page).to have_content 'Lists'
  end
end
