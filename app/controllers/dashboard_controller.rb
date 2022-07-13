class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @MembersList = User.membership
    @ProjetsList = Projet.all
    @CampagnesList = Campagne.all
  end

  def home
    
  end
end
