for id in 1..30
  name = Faker::Food.dish
  address = Faker::Kpop.girl_groups
  email = "example#{id}@gmail.com"
  company = Company.create!(name: name,
             address: address,
             email: email)

  8.times do
    a_job = Faker::DragonBall.character
    description =  "The dog - " + Faker::Dog.name + " like the food -" + name
    salary = Faker::Number.between(0, 1000)
    company.jobs.create!(
      name:  a_job,
      description: description,
      salary: salary)
  end
end
