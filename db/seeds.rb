# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.all.length <10
  15.times do |index|
    first_name = Faker::Name.first_name
    arguments = {first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    description: Faker::Hipster.paragraph,
    email: Faker::Internet.safe_email(first_name),
    password: Faker::Internet.password(8, 12),
    rate_per_hour: 100,
    rate_per_gig: 400,
    recordings_link: Faker::Internet.url,
    soundcloud_link: Faker::Internet.url,
    profile_photo: Faker::Avatar.image}
    User.create!(arguments)
  end
end
