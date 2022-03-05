class MembershipController < ApplicationController
  def index
  end
  def memberslist
    @MembersList = User.where("membership_category = ?", "particulier" || "organisation").order('created_at desc')
    @MembersMonthly = @MembersList.where(:created_at => (Time.now.midnight - 30.day)..Time.now.midnight)
    @MembersWeekly = @MembersMonthly.where(:created_at => (Time.now.midnight - 7.day)..Time.now.midnight)
  end
end
