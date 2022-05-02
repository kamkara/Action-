module BuildCustomUrl
 extend ActiveSupport::Concern

  #find country name
  def country_name
    #country_name = ISO3166::Country[country_code]
    #country_name.translations[I18n.locale.to_s] || country.common_name || country.iso_short_name
    #self.country = "#{country_name}"
  end

  def full_contact
    self.full_contact = "(#{self.country_code})  #{self.contact}" 
  end 
  
  def full_name
    self.full_name = "#{self.first_name} #{self.last_name}" 
  end  
   
  def slug
    self.slug = "#{self.full_name}" 
  end
end 