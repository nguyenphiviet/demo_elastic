30.times do |t|
  name = Faker::Company.name
  address = Faker::Address.full_address
  Company.create!(name:  name,
             address: address)
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
    company.jobs.create!(
      name:  name,
      description: description)
  end
end
