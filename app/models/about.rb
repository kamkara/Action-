class About < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  ################## SLUG ###############
  def slugged
    self.slug = "#{action-mission}"
  end
  extend FriendlyId
  friendly_id :slugged, use: :slugged
  
  def should_generate_new_friendly_id?
    slugged_changed?
  end
end
