ActiveAdmin.register Inquiry do
 
form do |f|
    f.inputs "Inquiry call" do
      f.input :company_name
      f.input :company_address
      f.input :contact_person
    end
    f.inputs "Contact Number" do
       #f.input :tel, :input_html => { :style => "width: 120px"}
       #f.input :cp,  :input_html => { :style => "width: 120px"}
       #f.input :fax, :input_html => { :style => "width: 120px"}
    end
    f.inputs "Request / Source" do
       f.input :source,  :collection => [["Website","Wesite"],["Fliers", "Fliers"],["News Paper",["Sales Representative","Sales Representative"]]], :as => :radio 
       f.input :inquiry, :label => "Request", :input_html => { :rows => 3 }
    end
    f.buttons
  end


  index do
    column :company_name do |inquiry|
        link_to inquiry.company_name, admin_inquiry_path(inquiry)
      end
    column :company_address
    column :contact_person
  end
end

