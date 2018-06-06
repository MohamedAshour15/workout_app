 require 'rails_helper'
RSpec.feature "Creating an Exercise" do
  before do
    @john=User.create( email: "john@example.com", password: "password")
    login_as(@john)
  end
  scenario 'with valid inputs' do
    visit '/'
    click_link "My Lounge"
    click_link "New Workout"
    expect(page).to have_link("Back")
    fill_in "Duration",with: 70
    fill_in "Workout Details", with: "Weight Lifting"
    fill_in "Activity date",with: "2016-07-26"
    click_button "Create Exercise"
  end
  
end
