task :fake => :environment do 
  150.times do |n|
  title = Faker::Lorem.sentence
  body = Faker::Lorem.paragraph(10, true, 5)
  # course_category_id = rand(1..3)
  # course_region_id = rand(1..4)
  # company = Faker::Company.name
  # email = Faker::Internet.email
  # zipcode = Faker::Address.zip_code
  # # state = Faker::Address.state
  # employees = Faker::Number.between(1, 650)
  # city = Faker::Address.city


  Post.create!(
    title: title,
    body: body)
  end
end