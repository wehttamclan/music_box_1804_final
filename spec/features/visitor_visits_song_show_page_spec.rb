require 'rails_helper'

describe 'a visitor visits song index page' do
  it "sees all songs" do
    artist = Artist.create(name: 'Journey')
    song_1 = artist.songs.create(title: "Don't Stop Believing", length: 320, play_count: 390808)
    song_2 = artist.songs.create(title: "Anyway You Want It", length: 420, play_count: 67908)
    genre_1 = Genre.create(name:'Rock')
    genre_2 = Genre.create(name:'Classical')
    genre_3 = Genre.create(name:'Crazy')
    SongGenre.create(song_id: song_1.id, genre_id: genre_1.id)
    SongGenre.create(song_id: song_1.id, genre_id: genre_2.id)
    SongGenre.create(song_id: song_2.id, genre_id: genre_2.id)

    visit song_path(song_1)

    expect(page).to have_content(genre_1.name)
    expect(page).to have_content(genre_2.name)
    expect(page).to_not have_content(genre_3.name)
  end
end
