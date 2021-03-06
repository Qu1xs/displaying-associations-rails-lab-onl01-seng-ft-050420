# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do 
    Artist.create(name: Faker::Music.band)
end 
  
Artist.all.each do |artist|
    5.times do
        artist.songs.create(title: Faker::Music.album)
    end
end