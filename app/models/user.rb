class User < ApplicationRecord

  has_secure_password

  #validations section
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  # validates :password, format: { with: /\A(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/,
  #   message: "must include at least one lowercase letter, one uppercase letter, and one digit" }

	# User roles will correspond to user types: admin, student, mentor, ect. 0 is most restrictive (student);
	# 5 is most powerful (admins)
  def is_admin?
  	role == 5
  end
end
