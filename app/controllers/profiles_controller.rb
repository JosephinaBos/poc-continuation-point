class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    if @profile.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = @profile.user
  end

  def edit
    @user = @profile.user
  end

  def update
    @profile.update(profile_params)
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:bio)
  end

  def find_profile
    @profile = Profile.find(params[:id])
  end
end
