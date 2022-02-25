class WelcomeController < ApplicationController
  def index
    redirect_to memberspace_path if user_signed_in?
  end
end
