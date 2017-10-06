class UsersController < ApplicationController
  layout 'user_login'
  def show
    user = User.find(params[:id])
  end

  def edit
  end

  def update
  end
end
