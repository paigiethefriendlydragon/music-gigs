# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.destroy_all

User.destroy_all
  5.times do |index|
    first_name = Faker::Name.first_name
    arguments = {
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    description: Faker::Hipster.paragraph,
    email: Faker::Internet.safe_email(first_name + index.to_s),
    password: Faker::Internet.password(8, 12),
    rate_per_hour: 100,
    rate_per_gig: 400,
    recordings_link: Faker::Internet.url,
    soundcloud_link: Faker::Internet.url,
    profile_photo:
    Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/Screen Shot 2019-05-03 at 2.45.40 PM.png'), 'image/png')
  }
    User.create!(arguments)
  end

  5.times do |index|
    first_name = Faker::Name.first_name
    arguments = {
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    description: Faker::Hipster.paragraph,
    email: Faker::Internet.safe_email(first_name + index.to_s),
    password: Faker::Internet.password(8, 12),
    rate_per_hour: 100,
    rate_per_gig: 400,
    recordings_link: Faker::Internet.url,
    soundcloud_link: Faker::Internet.url,
    profile_photo:
    Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/Cinderella pic.jpg'), 'image/jpg')
  }
    User.create!(arguments)
  end

  5.times do |index|
    first_name = Faker::Name.first_name
    arguments = {
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    description: Faker::Hipster.paragraph,
    email: Faker::Internet.safe_email(first_name + index.to_s),
    password: Faker::Internet.password(8, 12),
    rate_per_hour: 100,
    rate_per_gig: 400,
    recordings_link: Faker::Internet.url,
    soundcloud_link: Faker::Internet.url,
    profile_photo:
    Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/IMG_4751 copy.jpeg'), 'image/jpeg')
  }
    User.create!(arguments)
  end
