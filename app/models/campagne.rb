class Campagne < ApplicationRecord
  belongs_to :user
  has_one_attached :heroImg
  has_rich_text :content
  
  Campagne.all.with_rich_text_content # Preload the body without attachments.
  Campagne.all.with_rich_text_content_and_embeds # Preload both body and attachments.


  STATUS= ["Encours", "Approbation", "Public", "La lune", "Archive" ]
  validates :title, :content, :start_date, :amount, presence: true
  #validates_comparison_of :start_date, greater_than: -> { Date.today }
  validates :title, :content, length: { minimum:5}


  ################## SLUG ###############
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  def should_generate_new_friendly_id?
   title_changed?
  end
end
