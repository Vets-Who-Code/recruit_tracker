class User < ApplicationRecord

  has_secure_password

  #validations section
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  # validates :password, format: { with: /\A(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/,
  #   message: "must include at least one lowercase letter, one uppercase letter, and one digit" }

	# User roles will correspond to user types: admin, student, mentor, ect. 0 is most restrictive (student);
	# 5 is most powerful (admins)

  enum profile_status: {applied: 0, submitted: 1, under_review: 2, accepted: 3, rejected: 4, needs_more_work: 5}

  def is_admin?
  	role == 5
  end

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

def generate_token(column)
  begin
    self[column] = SecureRandom.urlsafe_base64
  end while User.exists?(column => self[column])
end

end