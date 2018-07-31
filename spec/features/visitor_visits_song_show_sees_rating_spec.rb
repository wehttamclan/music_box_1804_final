require 'rails_helper'

describe 'a visitor visits show page' do
  it "sees rating for song" do
    artist = Artist.create(name:'Adele')
    song_1 = artist.songs.create(title: "Don't Stop Believin", length: 303, play_count: 123456, rating: 4)

    visit song_path(song_1)

    expect(page).to have_content("Rating: #{song_1.rating}")
  end
end
