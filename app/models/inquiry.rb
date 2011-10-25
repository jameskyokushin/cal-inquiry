class Inquiry < ActiveRecord::Base

  validates :company_name, 
            :company_address,
            :contact_number, 
            :inquiry, :presence => true
  validates :tel,
            :cp,
            :fax, :presence => true
end


