require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('scrabble score', {:type => :feature}) do
  it ('take user entry and return scrabble score') do
    visit('/')
    fill_in('scrabble_word', :with => 'scrabble')
    click_button('Submit')
    expect(page).to have_content('14')
  end
end
