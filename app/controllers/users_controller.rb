class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      render json: @user
    end
  end

  def destroy
    @user = User.destroy(params[:user][:id])
  end

  def update
    @user = User.update(params[:id,:name,:last_name,:email,:phone,:password,:address])
    if @user.save
      redirect_to @user
    else
      render json: @user
    end
  end

  def show
    @user = User.find(params[:id])
  end
end

