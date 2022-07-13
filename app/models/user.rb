class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  #has_many :posts
  has_many :abouts
  has_many :projets
  has_many :campagnes

  validates :first_name, :last_name, :full_name, :email, :password,
              :country_code, :country, :contact, :membership_category, presence: true
    
   validates :full_name,presence: true,
              format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ },
              length: { minimum:5, maximum: 30,
              message: "%{value} verifier votre nom complet"}

   validates :contact, uniqueness: true, numericality: { only_integer: true }
              
   


  def full_name
    self.full_name = "#{self.first_name} #{self.last_name}" 
  end  
  
  def slug
    self.slug = "#{self.full_name}"
    
  end

  ################## SLUG ###############
  extend FriendlyId
  friendly_id :full_name, use: :slugged
  
  def should_generate_new_friendly_id?
    full_name_changed?
  end

  ################## BEFORE SAVE  #########
  before_save do
    self.country            = country.strip.squeeze(" ")
    self.contact            = contact.strip.squeeze(" ")
    self.first_name         = first_name.strip.squeeze(" ").downcase.capitalize
    self.last_name          = last_name.strip.squeeze(" ").downcase.capitalize
  end

end
