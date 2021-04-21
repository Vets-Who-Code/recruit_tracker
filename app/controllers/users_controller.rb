class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update ]

  def index
    @users = User.all
  end

  def show

  end

	def new
    @user = User.new
  end

  def edit
    render "edit"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

   def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "recruit ##{@user.id} | name: #{@user.first_name} #{@user.last_name} was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(
        :first_name,
        :last_name,
        :email,
        :password,
        :password_confirmation,
        :admin,
        :zip_code,
        :city,
        :state,
        :country,
        :branch_of_service,
        :year_joined,
        :year_separated,
        :twitter_profile_url,
        :linked_in_profile_url,
        :github_profile_url,
        :prework_link,
        :prework_repo_link
      )
    end
    
end