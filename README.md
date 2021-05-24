<p align=center>
  <a href=https://github.com/Vets-Who-Code/recruit_tracker/blob/main/LICENSE>
    <img src=https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square alt="License: MIT" />
  </a>
  <a href=https://github.com/Vets-Who-Code/vwc-site/blob/master/.github/contributing.md>
    <img src=https://img.shields.io/badge/contributions-welcome-orange.svg?style=flat-square alt="Contributions Welcome" />
  </a>
</p>

<p align=center>
  <img src=https://avatars1.githubusercontent.com/u/18350560?s=200&v=4 alt="VWC Logo" />
</p>

# Vets Who Code Recruit Tracker App

The Vets Who Code Recruit Tracker App is a Ruby on Rails Applicaton designed for use my VWC Admins and new recruits. New recruits can apply to the program

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You will need the following properly installed on your computer.

- [Ruby on Rails](https://rubyonrails.org/)
- [PostGreSQL](https://www.postgresql.org/) technically this is optional; you can remove the pg from your Gemfile and use SQLite if you like.
- [Ruby](https://www.ruby-lang.org/en/)
- [Node](https://nodejs.org/en/)

## Installing

In a terminal window run these commands.

```sh
$ git clone https://github.com/Vets-Who-Code/recruit_tracker.git
$ cd recruit_tracker
$ bundle
$ yarn
$ rails db:migrate
$ rails db:seed
```

You should be able to view the website locally at `http://localhost:3000/`. See db/seed.rb for users and passwords.

## Testing:
- run "rails test test/models/user_test.rb" to run an indivigual test
- capybara test with "rspec spec/hello_world_spec.rb"


## Features:
- Admin users have admin flag and can view all cohorts and change recruits profile status
- Recruits have the ability to edit their profile and change their status to submitted
- Recurits and admins receive an email when any status change to their profile happens

See requirements & features here: https://docs.google.com/document/d/12xfq87nB4wL5cHRbpgwGNQEEaqPjTltBfpE6n7HeLXE/edit?usp=sharing
