require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entery and returns what type of triangle it is') do
    visit('/')
    fill_in('side1', :with => "2")
    fill_in('side2', :with => "2")
    fill_in('side3', :with => "2")
    click_button('Check it out!')
    expect(page).to have_content('It is an equaliterial triangle!')
  end
end
