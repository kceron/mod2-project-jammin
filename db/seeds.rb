# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#artists, name
Artist.create([
  {
    name: "Bruce Springsteen"
  },
  {
    name: "Avril Lavigne"
  },
  {
    name: "Backstreet Boys"
  },
  {
    name: "Cindy Lauper"
  },
  {
    name: "Whitney Houston"
  }
])

Genre.create([
  {
    name: "pop"
  },
  {
    name: "rock"
  },
  {
    name: "hip hop"
  }
])

Song.create([
  {
    title: "Backstreet;s Back",
    duration: 180,
    artist_id: 3,
    genre_id: 1
  },
  {
    title: "Born in the USA",
    duration: 192,
    artist_id: 1,
    genre_id: 2
  },
  {
    title: "Singing in the Rain",
    duration: 176,
    artist_id: 2,
    genre_id: 1
  },
  {
    title: "I Wanna Dance with Somebody",
    duration: 200,
    artist_id: 5,
    genre_id: 1
  },
  {
    title: "Poison",
    duration: 210,
    artist_id: 3,
    genre_id: 3
  }
])

# User.create!(name: 'foo',
#   username: ""
#   password_digest: User.digest('foobar') )

# User.create([
#   {
#     name: "Hugo"
#   },
#   {
#     name: "Mary"
#   }
#   ])

# Playlist.create([
#   {
#     name: "Fun Tunes",
#     user_id: 1
#   },
#   {
#     name: "Party",
#     user_id: 1
#   },
#   {
#     name: "Sad Times",
#     user_id: 2
#   }
# ])

# SongPlaylist.create([
#   {
#     song_id: 1,
#     playlist_id: 1
#   },
#   {
#     song_id: 2,
#     playlist_id: 1
#   },
#   {
#     song_id: 3,
#     playlist_id: 2
#   },
#   {
#     song_id: 4,
#     playlist_id: 2
#   },
#   {
#     song_id: 5, 
#     playlist_id: 3
#   },
#   {
#     song_id: 1,
#     playlist_id: 3
#   },
#   {
#     song_id: 3,
#     playlist_id: 1
#   },
#   {
#     song_id: 2,
#     playlist_id: 2
#   }
# ])