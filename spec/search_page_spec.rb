require_relative '../init'

RSpec.describe 'Search Page', type: :feature do
  it 'should contain the text DuckDuckGo' do
    visit 'https://www.duckduckgo.com'
    assert_no_selector('#search_form_homepage > div.search__autocomplete')
    expect(page).to have_text('DuckDuckGo')
  end

  it 'shows autocomplete window after we type in the search box' do
    visit 'https://www.duckduckgo.com'
    fill_in 'search_form_input_homepage', with: 'a'
    assert_selector('#search_form_homepage > div.search__autocomplete')
  end
end
