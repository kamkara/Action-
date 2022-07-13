module BuildCustomUrl
 extend ActiveSupport::Concern



  def full_name
    self.full_name = "#{self.first_name} #{self.last_name}" 
  end  
   
  def slug
    self.slug = "#{self.full_name}" 
  end
end 