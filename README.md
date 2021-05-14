# README
An administrative app used by https://vetswhocode.io/ volunteers to manage the application process for its students.

## To set up locally:
- clone repo and cd into the app
- run **bundle**
- run **yarn**
- run **rails db:migrate**
- run **rails db:seed** (see db/seed.rb for users and passwords)

## Testing:
- run "rails test test/models/user_test.rb" to run an indivigual test
- capybara test with "rspec spec/hello_world_spec.rb"


## Features:
- Admin users have admin flag and can view all cohorts and change recruits profile status
- Recruits have the ability to edit their profile and change their status to submitted
- Recurits and admins receive an email when any status change to their profile happens

See requirements & features here: https://docs.google.com/document/d/12xfq87nB4wL5cHRbpgwGNQEEaqPjTltBfpE6n7HeLXE/edit?usp=sharing
