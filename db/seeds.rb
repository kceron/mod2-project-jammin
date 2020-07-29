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
    name: "Bell Biv DeVoe"
  },
  {
    name: "Whitney Houston"
  },
  {
    name: "Gorillaz"
  },
  {
    name: "Pedro Capo"
  },
  {
    name: "The Outfield"
  },
  {
    name: "Lamb"
  },
  {
    name: "John Maus"
  },
  {
    name: "BOAN"
  },
  {
    name: "Elton John"
  },
  {
    name: "John Coltrane"
  },
  {
    name: "Sum 41"
  },
  {
    name: "Redbone"
  },
  {
    name: "The Five Stairsteps"
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
  },
  {
    name: "jazz"
  },
  {
    name: "soul"
  }
])

Song.create([
  {
    title: "Backstreet's Back",
    duration: 287, 
    artist_id: 3,
    genre_id: 1,
    embed_key: "5WTxbyWTpoqhdxEN2szOnl"
  },
  {
    title: "Born in the USA",
    duration: 278, 
    artist_id: 1,
    genre_id: 2,
    embed_key: "0dOg1ySSI7NkpAe89Zo0b9"
  },
  {
    title: "Sk8er Boi",
    duration: 204, 
    artist_id: 2,
    genre_id: 2,
    embed_key: "00Mb3DuaIH1kjrwOku9CGU"
  },
  {
    title: "I Wanna Dance with Somebody",
    duration: 291, 
    artist_id: 5,
    genre_id: 1,
    embed_key: "2tUBqZG2AbRi7Q0BIrVrEj"
  },
  {
    title: "Poison",
    duration: 261, 
    artist_id: 4,
    genre_id: 3,
    embed_key: "6m59VvDUi0UQsB2eZ9wVbH"
  },
  {
    title: "Feel Good, Inc.",
    duration: 222, 
    artist_id: 6,
    genre_id: 2,
    embed_key: "0d28khcov6AiegSCpG5TuT"
  },
  {
    title: "Calma - Remix",
    duration: 238, 
    artist_id: 7,
    genre_id: 1,
    embed_key: "5iwz1NiezX7WWjnCgY5TH4"
  },
  {
    title: "Your Love",
    duration: 221, 
    artist_id: 8,
    genre_id: 2,
    embed_key: "5dRQUolXAVX3BbCiIxmSsf"
  },
  {
    title: "In Binary",
    duration: 316,
    artist_id: 9,
    genre_id: 1,
    embed_key: "6Etex7fs9liXrnYsfbnDXp"
  },
  {
    title: "Keep Pushing On",
    duration: 214,
    artist_id: 10,
    genre_id: 1,
    embed_key: "2pOxkKTEOj1ZfazcwXIdLl"
  },
  {
    title: "Mentiras",
    duration: 324, 
    artist_id: 11,
    genre_id: 1,
    embed_key: "5JDoP7w6kMbG4s4C7puLYz"
  },
  {
    title: "I'm Still Standing",
    duration: 183, 
    artist_id: 12,
    genre_id: 1,
    embed_key: "1jDJFeK9x3OZboIAHsY9k2"
  },
  {
    title: "Blue Train",
    duration: 643,
    artist_id: 13,
    genre_id: 4,
    embed_key: "3zIuHdD8dkh1vPxQu334T7"
  },
  {
    title: "In Too Deep",
    duration: 207, 
    artist_id: 14,
    genre_id: 2,
    embed_key: "1HNE2PX70ztbEl6MLxrpNL"
  },
  {
    title: "Come and Get Your Love",
    duration: 205, 
    artist_id: 15,
    genre_id: 5,
    embed_key: "7GVUmCP00eSsqc4tzj1sDD"
  },
  {
    title: "Ooh Child",
    duration: 197, 
    artist_id: 16,
    genre_id: 5,
    embed_key: "5RrLqJtWCRvwP8Wh3TsvRO"
  },
  {
    title: "Tiny Dancer",
    duration: 377,
    artist_id: 12,
    genre_id: 1,
    embed_key: "2TVxnKdb3tqe1nhQWwwZCO"
  },
  {
    title: "In a Sentimental Mood",
    duration: 255,
    artist_id: 13,
    genre_id: 4,
    embed_key: "0E8q2Fx2XuzXCO2NSAppkR"
  },
  {
    title: "Fat Lip",
    duration: 178, 
    artist_id: 14,
    genre_id: 2,
    embed_key: "4KacUpvbA3Mfo05gttTjhN"
  },
  {
    title: "How Will I Know",
    duration: 275, 
    artist_id: 5,
    genre_id: 1,
    embed_key: "5tdKaKLnC4SgtDZ6RlWeal"
  }
])

User.create([
  {
    name: "Hugo",
    username: "hugo4lyfe",
    password: "hugohugo",
    password_confirmation: "hugohugo"
  },
  {
    name: "Mary",
    username: "notamadonna",
    password: "marymary",
    password_confirmation: "marymary"
  }
  ])

Playlist.create([
  {
    name: "Fun Tunes",
    user_id: 1
  },
  {
    name: "Party",
    user_id: 1
  },
  {
    name: "Sad Times",
    user_id: 2
  }
])

SongPlaylist.create([
  {
    song_id: 1,
    playlist_id: 1
  },
  {
    song_id: 2,
    playlist_id: 1
  },
  {
    song_id: 3,
    playlist_id: 2
  },
  {
    song_id: 4,
    playlist_id: 2
  },
  {
    song_id: 5, 
    playlist_id: 3
  },
  {
    song_id: 1,
    playlist_id: 3
  },
  {
    song_id: 3,
    playlist_id: 1
  },
  {
    song_id: 2,
    playlist_id: 2
  },
  {
    song_id: 20,
    playlist_id: 3
  },
  {
    song_id: 15,
    playlist_id: 1
  },
  {
    song_id: 11,
    playlist_id: 1
  },
  {
    song_id: 8,
    playlist_id: 2
  },
  {
    song_id: 6,
    playlist_id: 2
  },
  {
    song_id: 13,
    playlist_id: 3
  },
  {
    song_id: 17,
    playlist_id: 3
  }
])