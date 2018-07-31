require 'rails_helper'

describe Genre, type: :model do
  describe 'validations' do
    it{should validate_presence_of(:name)}
  end
  describe "relationships" do
    it{should have_many(:songs).through(:song_genres)}
  end
  describe "instance methods" do
    it "has average rating" do

      artist = Artist.create(name: 'Journey')
      song_1 = artist.songs.create(title: "Don't Stop Believing", length: 320, play_count: 390808, rating: 1)
      song_2 = artist.songs.create(title: "Anyway You Want It", length: 420, play_count: 67908, rating: 3)
      song_3 = artist.songs.create(title: "not a song", length: 123, play_count: 122, rating: 5)
      genre_1 = Genre.create(name:'Rock')

      SongGenre.create(song_id: song_1.id, genre_id: genre_1.id)
      SongGenre.create(song_id: song_2.id, genre_id: genre_1.id)
      SongGenre.create(song_id: song_3.id, genre_id: genre_1.id)

      expect(genre_1.average_rating).to eq(3)
    end
  end
end
