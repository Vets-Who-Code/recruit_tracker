# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
 def new_user_registration
    # Set up a temporary order for the preview
    user = User.new(first_name: "Joe", last_name: "Smith", email: "joe@gmail.com")

    UserMailer.with(user: user).new_user_registration
  end
end
