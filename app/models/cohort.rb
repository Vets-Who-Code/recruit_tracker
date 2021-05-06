class Cohort < ApplicationRecord
  has_many :users

  #there should only ever be one active cohort
  validate :active, :active_cohort

  def active_cohort
    if active == true && !Cohort.find_by(active: true).nil?
     	errors.add(:active, ": Another cohort is already active; only one Cohort may be active at a time.")
     end
  end
end
