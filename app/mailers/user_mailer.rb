# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailer < ApplicationMailer
	def new_user_registration
		@user = params[:user]

		mail(to: @user.email, subject: "Thank you for signing up for RecruitTracker")
	end
end
