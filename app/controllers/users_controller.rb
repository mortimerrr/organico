class UsersController < ApplicationController

  before_filter :authenticate_user!

  def new
    # @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end


  
end