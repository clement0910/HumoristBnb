class UsersController < ApplicationController

  def profile
    @user = current_user
    authorize @user
  end

  def humorists
    @user = current_user
    @humorists = @user.humorists
    authorize @user
  end
end
