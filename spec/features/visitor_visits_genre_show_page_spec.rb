require 'rails_helper'

describe 'a visitor visits genre show page' do
  it "sees all songs associated with the genre" do
    artist = Artist.create(name: 'Journey')
    song_1 = artist.songs.create(title: "Don't Stop Believing", length: 320, play_count: 390808)
    song_2 = artist.songs.create(title: "Anyway You Want It", length: 420, play_count: 67908)
    song_3 = artist.songs.create(title: "not a song", length: 123, play_count: 122)
    genre_1 = Genre.create(name:'Rock')
    genre_2 = Genre.create(name:'Classical')
    SongGenre.create(song_id: song_1.id, genre_id: genre_1.id)
    SongGenre.create(song_id: song_2.id, genre_id: genre_1.id)
    SongGenre.create(song_id: song_2.id, genre_id: genre_2.id)

    visit genre_path(genre_1)

    expect(page).to have_content(song_1.title)
    expect(page).to have_content(song_2.title)
    expect(page).to_not have_content(song_3.title)
  end
  it "sees all songs associated with the genre" do
    artist = Artist.create(name: 'Journey')
    song_1 = artist.songs.create(title: "Don't Stop Believing", length: 320, play_count: 390808, rating: 1)
    song_2 = artist.songs.create(title: "Anyway You Want It", length: 420, play_count: 67908, rating: 3)
    song_3 = artist.songs.create(title: "not a song", length: 123, play_count: 122, rating: 5)
    song_4 = artist.songs.create(title: "not a song", length: 123, play_count: 122, rating: 4)
    genre_1 = Genre.create(name:'Rock')
    genre_2 = Genre.create(name:'Classical')
    SongGenre.create(song_id: song_1.id, genre_id: genre_1.id)
    SongGenre.create(song_id: song_2.id, genre_id: genre_1.id)
    SongGenre.create(song_id: song_3.id, genre_id: genre_1.id)
    SongGenre.create(song_id: song_4.id, genre_id: genre_2.id)


    visit genre_path(genre_1)

    expect(page).to have_content(genre_1.average_rating)
  end
end
