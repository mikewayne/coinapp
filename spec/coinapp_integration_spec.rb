require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("the coinapp path", {:type => :feature}) do
  it('processes the user entry and returns number of respective coins') do
      visit('/')
      fill_in('numCents', :with => 20)
      click_button('Submit')
      expect(page).to have_content('denominations')
  end
end
