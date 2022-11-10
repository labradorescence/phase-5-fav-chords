# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  users = User.create([
    { name: 'Zoey' }, 
    { name: 'Sadie'},
    { name: 'Andrea'},
    { name: 'Justy'},
    { name: 'Diana'}
    ])

  chords = Chord.create([
    { root: 'A', qualitytype: 'Major', note: 'A-C#-E', sound: 'http://', image: 'http://'  }, 
    { root: 'A', qualitytype: 'Minor', note: 'A-C-E', sound: 'http://', image: 'http://'  }, 
    ])

  favchords = FavChord.create([
    user_id: 1,
    chord_id: 1
  ])