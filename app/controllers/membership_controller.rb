class MembershipController < ApplicationController
  def index
  end
  def memberslist
    @MembersList = User.where("membership_category = ?", "particulier" || "organisation").order('created_at desc')
    @MembersMonthly = @MembersList.where("created_at >= ?", 1.month.from_now)
    @MembersWeekly = @MembersMonthly.where("created_at >= ?", 1.week.from_now)
  end
end
