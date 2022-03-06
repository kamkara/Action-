class Projet < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  Projet.all.with_rich_text_content # Preload the body without attachments.
  Projet.all.with_rich_text_content_and_embeds # Preload both body and attachments.


  STATUS= ["Encours", "Approbation", "Public", "La lune", "Archive" ]
  validates :title, :content, :start_date, :amount, presence: true
  validates :title, :content, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ },
              length: { minimum:5, maximum: 30}


  ################## SLUG ###############
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  def should_generate_new_friendly_id?
   title_changed?
  end
end
