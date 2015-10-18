User.destroy_all
Photo.destroy_all

20.times do
   User.create!([
      {:name => Faker::Name.name, :username => Faker::Team.name}])
end

@users = User.all
@users.each do |user|
   photo = Photo.new
   photo.caption = Faker::Lorem.sentences(1).join
   photo.image = Faker::Avatar.image
   photo.owner_id = user.id
   photo.save
end

puts "#{User.count} Users created"
puts "#{Photo.count} photos created"
