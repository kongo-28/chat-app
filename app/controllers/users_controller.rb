class UsersController < ApplicationController

  def edit
  end

  def update
    # 現在ログインしているユーザーの情報を、prams(フォームから飛んできた情報)
    # に入っている情報に書き換える
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end


end
