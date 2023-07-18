class VrController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    skip_authorization
    @user = User.find(params[:user_id])
  end
end
