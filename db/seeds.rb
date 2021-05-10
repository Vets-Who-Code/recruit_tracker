# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c=Cohort.new(name: 'Newbs Cohort', start_date: Date.today, end_date: Date.tomorrow, description: 'Cohort fom seed file', active: true)
if c.save!
	puts "Created cohort #{c.name}"
end

u=User.new( email: 'admin@test.com', first_name: 'John', last_name: 'Doe', password: 'Test1234!', admin: true, cohort_id: c.id)
if u.save!
	puts "Created admin user #{u.email} with password #{u.password}"
end

u=User.new( email: 'recruit@test.com', first_name: 'Mary', last_name: 'Smith', password: 'Test1234!', cohort_id: c.id)
u.save!
if u.save!
	puts "Created recruit #{u.email} with password #{u.password}"
end