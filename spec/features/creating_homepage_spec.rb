 require 'rails_helper'
RSpec.feature "Creating Home Page" do
  before do
    @john=User.create(:email "john@example.com",password: "password")
  end
  scenario do
    
  visit '/'
  expect(page).to have_content('Workout Lounge!')
  expect(page).to have_content('Show off your workout')
   expect(page).to have_link('Home')
   expect(page).to have_link('Athletes Den')
  end
  
end
