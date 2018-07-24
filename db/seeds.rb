# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


artist_1 = Artist.create(name: 'Journey')
song_1 = artist_1.songs.create(title: "Don't Stop Believin", length: 303, play_count: 123456)
song_2 = artist_1.songs.create(title: "Anyway You Want It", length: 253, play_count: 962452)

artist_2 = Artist.create(name: 'Eagles')
song_3 = artist_2.songs.create(title: 'Hotel California', length: 456, play_count: 577389)
song_4 = artist_2.songs.create(title: 'Take it Easy', length: 343, play_count: 30092)
song_5 = artist_2.songs.create(title: 'Desperado', length: 420, play_count: 99587)

artist_3 = Artist.create(name: 'Celine Dion')
song_6 = artist_3.songs.create(title: 'My Heart Will Go On', length: 502, play_count: 6555273)
song_7 = artist_3.songs.create(title: 'I Surrender', length: 321, play_count: 897302)
song_8 = artist_3.songs.create(title: "That's the Way It Is", length: 364, play_count: 879823)


playlist_1 = Playlist.create(name: 'Favorites')
PlaylistSong.create(playlist: playlist_1, song: song_1)
PlaylistSong.create(playlist: playlist_1, song: song_3)
PlaylistSong.create(playlist: playlist_1, song: song_4)
PlaylistSong.create(playlist: playlist_1, song: song_6)
PlaylistSong.create(playlist: playlist_1, song: song_7)
PlaylistSong.create(playlist: playlist_1, song: song_8)

playlist_2 = Playlist.create(name: 'Drive Home')
PlaylistSong.create(playlist: playlist_1, song: song_1)
PlaylistSong.create(playlist: playlist_1, song: song_2)
PlaylistSong.create(playlist: playlist_1, song: song_3)
PlaylistSong.create(playlist: playlist_1, song: song_4)
PlaylistSong.create(playlist: playlist_1, song: song_7)
PlaylistSong.create(playlist: playlist_1, song: song_8)
