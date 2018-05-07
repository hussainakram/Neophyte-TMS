class UsersController < ApplicationController

  def new
  end

  def create

  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index

  end

  def show
  end

  def all_users
    @users = User.all.sort{|a,b| b.points <=> a.points}
  end

  def graphs
    @user = User.find(params[:user_id])
    @user_challenges = @user.user_challenges
  end

  def usr_projects
    @user = User.find(params[:user_id])
    @projects= @user.projects.all
  end

  def usr_challenges
    @user = User.find(params[:user_id])
    @challenges= @user.challenges.all
  end

end
