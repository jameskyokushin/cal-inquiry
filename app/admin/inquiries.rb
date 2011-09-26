ActiveAdmin.register Inquiry do
  index do
    column :company_name
    column :company_address
    column :contact_person
    column :id
    default_actions 
  end
end
