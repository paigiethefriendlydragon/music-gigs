
# Instrument.destroy_all
# User.destroy_all

  instrument_list = [
            ["Trumpet", "brass"],
            ["Cornet", "brass"],
            ["Piccolo Trumpet", "brass"],
            ["Flugelhorn", "brass"],
            ["French horn", "brass"],
            ["Baritone horn", "brass"],
            ["Euphonium", "brass"],
            ["Alto horn", "brass"],
            ["Tenor horn", "brass"],
            ["Trombone", "brass"],
            ["Tuba", "brass"],
            ["Bugle", "brass"],
            ["Accordion", "keyboard"],
            ["Celesta", "keyboard"],
            ["Clavichord", "keyboard"],
            ["Dulcitone", "keyboard"],
            ["Electronic keyboard", "keyboard"],
            ["harpsichord", "keyboard"],
            ["Organ", "keyboard"],
            ["Piano", "keyboard"],
            ["Synthesizer", "keyboard"],
            ["violin", "orchestral strings"],
            ["viola", "orchestral strings"],
            ["cello", "orchestral strings"],
            ["string bass", "orchestral strings"],
            ["harp", "orchestral strings"],
            ["acoustic guitar", "guitar family"],
            ["banjo", "guitar family"],
            ["bass guitar", "guitar family"],
            ["electric guitar", "guitar family"],
            ["mandolin", "guitar family"],
            ["ukulele", "guitar family"],
            ["alto flute", "woodwinds"],
            ["oboe", "woodwinds"],
            ["bass oboe", "woodwinds"],
            ["bassoon", "woodwinds"],
            ["clarinet", "woodwinds"],
            ["contrabass oboe", "woodwinds"],
            ["flute", "woodwinds"],
            ["piccolo", "woodwinds"],
            ["recorder", "woodwinds"],
            ["saxophone", "woodwinds"],
            ["bass drum", "percussion"],
            ["bongo drum", "percussion"],
            ["castanet", "percussion"],
            ["conga", "percussion"],
            ["cymbal", "percussion"],
            ["djembe", "percussion"],
            ["drums", "percussion"],
            ["gong", "percussion"],
            ["maracas", "percussion"],
            ["marimba", "percussion"],
            ["snare drum", "percussion"],
            ["tambourine", "percussion"],
            ["timpani", "percussion"],
            ["glockenspiel", "percussion"]
            ]
#             instrument_list.each do |name, instrument_type|
#                   instrument = Instrument.create!( name: name, instrument_type: instrument_type )
#                 end
#
 instruments = Instrument.all

  first_name = Faker::Name.first_name
  User.create([
    { first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    description: Faker::Hipster.paragraph,
    email: Faker::Internet.safe_email(first_name + "1"),
    password: Faker::Internet.password(8, 12),
    rate_per_hour: 100,
    rate_per_gig: 400,
    recordings_link: Faker::Internet.url,
    soundcloud_link: Faker::Internet.url,
    profile_photo: Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/cinderella pic.jpg'), 'image/jpg'),
    instrument_ids: [instruments[0].id,
    instruments[1].id] },

    {first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    description: Faker::Hipster.paragraph,
    email: Faker::Internet.safe_email(first_name + "2"),
    password: Faker::Internet.password(8, 12),
    rate_per_hour: 100,
    rate_per_gig: 400,
    recordings_link: Faker::Internet.url,
    soundcloud_link: Faker::Internet.url,
    profile_photo:
    Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/IMG_4751 copy.jpeg'), 'image/jpeg'),
    instrument_ids: [instruments[2].id, instruments[3].id] },

    {first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    description: Faker::Hipster.paragraph,
    email: Faker::Internet.safe_email(first_name + "3"),
    password: Faker::Internet.password(8, 12),
    rate_per_hour: 100,
    rate_per_gig: 400,
    recordings_link: Faker::Internet.url,
    soundcloud_link: Faker::Internet.url,
    profile_photo:
    Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/IMG_4751 copy.jpeg'), 'image/jpeg'),
    instrument_ids: [instruments[4].id, instruments[5].id] }
])
