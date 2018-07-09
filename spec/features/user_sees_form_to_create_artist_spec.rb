require 'rails_helper'

describe 'user can create artist' do
  it 'by filling in a form' do
    artist_name = "Journey"

    visit "/artists/new"

    fill_in "artist[name]", with: artist_name

    click_on "Create Artist"

    expect(page).to have_content(artist_name)
  end
end
