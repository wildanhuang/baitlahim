class UsersController < ApplicationController  
  before_filter :authenticate_user!
  before_action :prepare_user, :only => [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to user_path(id: @user.id), notice: "User data has been updated"
    else
      redirect_to user_path(id: @user.id), alert: "User data failed to update"
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end

  def contact_information_params
    params.require(:contact_information).permit(:baptist_number, :gender, :birthday, :address, :postal_code, :phone, :job_description, :website)
  end

  def prepare_user
    @user = User.where(id: params[:id]).first

    if @user.blank?
      redirect_to root_path, :alert => "User not found"
    end
  end
end
