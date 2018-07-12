30.times do |t|
  name = Faker::Company.name
  address = Faker::Address.full_address
  email = "example-#{t+1}@gmail.com"
  Company.create!(name:  name,
             address: address,
             email: email)
end

jobs_list = [
  "Software Developer",
  "Information Security Analyst",
  "IT Manager",
  "Computer Systems Analyst",
  "Computer Network Architect",
  "Computer Systems Administrator",
  "Database Administrator",
  "Web Developer",
  "Computer Support Specialist",
  "Computer Programmer"
]

for id in 1..30
  company = Company.find id
  jobs_list.each do |job|
    name = job
    description = Faker::Job.title + " - " + Faker::Job.field + " - " +
      Faker::Job.seniority + " - " + Faker::Job.position + " - " +
      Faker::Job.key_skill + " - " + Faker::Job.employment_type + " - " +
      Faker::Job.education_level
    salary = Faker::Number.between(0, 1000)
    company.jobs.create!(
      name:  name,
      description: description,
      salary: salary)
  end
end
