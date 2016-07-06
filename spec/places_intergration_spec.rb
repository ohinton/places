require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places path', {:type => :feature}) do
  it('adds a place to the list of saved places') do
    visit('/')
    fill_in('place', :with => "New York City")
    click_button('Add place')
    expect(page).to have_content("Your place has been successfully submitted!")
  end
end
