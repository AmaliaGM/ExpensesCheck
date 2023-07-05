class SplashController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    render
  end
end
