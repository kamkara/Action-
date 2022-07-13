class MembershipController < ApplicationController

  def index
  
  end
  def beaction
    
  end
  
  def memberslist
    @MembersList = User.membership
    @MembersMonthly = @MembersList.monthlyActif
    @MembersWeekly = @MembersMonthly.weeklyActif
  end
end
