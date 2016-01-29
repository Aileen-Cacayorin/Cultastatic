User.create!(
  username: "username",
  email: "username@gmail.com",
  password: "password",
  password_confirmation: "password",
  admin: true
)

# 20.times do |n|
#   Category.create!(
#     name: %w[j k i e r e z n a x y q u o p z y e].sample(10).join("")
#   )
#   5.times do |movie|
#     Movie.create(
#       :title => Faker::Name.name,
#       :director => Faker::Name.name,
#       :release => Faker::Date.backward,
#       :runtime => rand(60..180),
#       :summary => Faker::Lorem.paragraph(3),
#       :picture =>  Faker::Avatar.image("50x50"),
#       :actors => Faker::Lorem.words(4),
#       :category_id => Category.last.id
#
#       )
#   end
# end

Category.create!(:name => "Horror")
Category.create!(:name => "Action")
Category.create!(:name => "Comedy")
Category.create!(:name => " Sci-Fi")
Category.create!(:name => " Drama")
Category.create!(:name => "Fantasy")
Category.create!(:name => "Thriller")

movie_1 = Movie.create!(
  :title => "Star Wars: A New Hope",
  :director => "George Lucas",
  :release => Faker::Date.backward,
  :runtime => rand(60..180),
  :summary => Faker::Lorem.paragraph(3),
  :picture =>  Faker::Avatar.image("50x50"),
  :actors => Faker::Lorem.words(4),
  :category_id => Category.last.id
)

movie_2 = Movie.create!(
  :title => "Star Wars: The Empire Strikes Back",
  :director => "George Lucas",
  :release => Faker::Date.backward,
  :runtime => rand(60..180),
  :summary => Faker::Lorem.paragraph(3),
  :picture =>  Faker::Avatar.image("50x50"),
  :actors => Faker::Lorem.words(4),
  :category_id => Category.last.id
)

movie_3 = Movie.create!(
  :title => "Star Wars: Return of the Jedi",
  :director => "George Lucas",
  :release => Faker::Date.backward,
  :runtime => rand(60..180),
  :summary => Faker::Lorem.paragraph(3),
  :picture =>  Faker::Avatar.image("50x50"),
  :actors => Faker::Lorem.words(4),
  :category_id => Category.last.id
)

location_1 = Location.create!(
  :name => "Caffe Vita",
  :street => "2909 NE Alberta St",
  :city => "Portland",
  :state => "OR",
  :zip => "97211",
  :movie_id => movie_1.id
)

location_2 = Location.create!(
  :name => "Extracto",
  :street => "2921 NE Killingsworth St",
  :city => "Portland",
  :state => "OR",
  :zip => "97211",
  :movie_id => movie_2.id
)

location_3 = Location.create!(
  :name => "Barista",
  :street => "1725 NE Alberta St",
  :city => "Portland",
  :state => "OR",
  :zip => "97211",
  :movie_id => movie_3.id
)
