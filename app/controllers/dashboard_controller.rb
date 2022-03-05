class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @MembersList = User.where("membership_category = ?", "particulier" || "organisation").order('created_at desc')
    
  end

  def home
  end
end
