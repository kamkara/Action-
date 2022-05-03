class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  #Enables implicit order column for UUID
  self.implicit_order_column = "created_at"

  scope :membership, -> { where("category = ?", "Adherent" || "organisation").order('created_at desc')}
  scope :monthlyActif, ->  { where(:created_at => (Time.now.midnight - 30.day)..Time.now.midnight)}
  scope :weeklyActif, ->  { where(:created_at => (Time.now.midnight - 7.day)..Time.now.midnight)}
  # Ex:- scope :active, {where(:active => true)}
end
