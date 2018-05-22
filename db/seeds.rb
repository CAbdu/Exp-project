puts 'Destroying artworks...'
Artwork.destroy_all
puts 'artworks destroyed !'

puts 'Destroying users...'
User.destroy_all
puts 'Users destroyed !'

artworks = %w(Film Serie JeuxVideo Livre Musique)

artworks.each do |work|
  Artwork.create!(actable_type: work)
  print '...'
end

print 'Seeding Billy..'
user = User.new(
  first_name: 'Billy',
  last_name: 'Funk',
  email: 'abduchaib@hotmail.fr',
  password: 'motdepasse'
)
user.save!
print '...done seeding Billy'

print 'Seeding artworks..'
artworks = [
  {actable_type: :games, title: 'Inside', artist: 'Playdead', detail: 'la suite de Limbo', released_on: '29 juin 2016', genres: 'aventure/platformer'},
  {actable_type: :games, title: 'Street Fighter V', artist: 'Capcom', detail: 'le 5eme opus du plus gros jeu de baston 2D', released_on: '2016', genre: 'Baston 2D'},
  {actable_type: :movies, title: 'Le Voyage de Chihiro', artist: 'Hayao Miyazaki', detail: 'Le meilleur des miyazaki', released_on: '10 avril 2002', genre: "Film D'animation japonaise"},
  {actable_type: :movies, title: 'Old Boy', artist: 'Park Chan-wook', detail: '2eme film de la trilogie de la vengeance', released_on: '29 septembre 2004', genre: 'Drame'},
  {actable_type: :shows, title: 'Lost', artist: 'J.J. Abrams', detail: 'Série qui a lancé Abrams', released_on: '22 septembre 2004', genre: 'Drame, aventure, fantastique, mystère'},
  {actable_type: :shows, title: 'The Office', artist: 'Ricky Gervais et Stephen Merchant', detail: 'Steve Carell', released_on: '24 mars 2005', genre: 'Comique'},
  {actable_type: :books, title: 'Player One', artist: 'Ernest Cline', detail: "Steven Spielberg travaille sur l'adaptation cinématographique", released_on: "2011", genre: 'Science-Fiction'},
  {actable_type: :books, title: '20th Century Boys', artist: 'Naoki Urasawa', detail: "l'après Monster", released_on: '30 janvier 2000', genre: 'Science-Fiction'},
  {actable_type: :musics, title: 'Blowing in the wind', artist: 'Bob Dylan', detail: 'Hymne de toute une génération écrit en seulement 10 minutes', released_on: '9 juillet 1962', genre: 'Folk'},
  {actable_type: :musics, title: 'Billie Jean' , artist: 'Michael Jackson', detail: "he's not my son", released_on: '1982', genre: 'Pop'},
  {actable_type: :musics, title: 'Man in the mirror', artist: 'Michael Jackson', detail: 'blabla', released_on: '1987', genre: 'Pop'}

]

puts 'Done seeding !'
