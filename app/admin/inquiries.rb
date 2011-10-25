ActiveAdmin.register Inquiry do

filter :company_name
filter :contact_person

 show :title => :company_name do
    panel "Company Information" do
      attributes_table_for inquiry do
      row("Company Name") { inquiry.company_name }
      row("Address") { inquiry.company_address }
      row("Contact Person") { inquiry.contact_person }
      row("Contact Number") { inquiry.tel  }
      row("") { inquiry.cp  }
      row("") { inquiry.fax  }
      row("Source") { inquiry.source  }
      end
    end
     panel "Remarks" do
      attributes_table_for inquiry do
        row("") { inquiry.inquiry }
      end
    end
 end
 
form do |f|
    f.inputs "Inquiry call" do
      f.input :company_name
      f.input :company_address
      f.input :contact_person
    end
    f.inputs "Contact Number" do
       f.input :tel, :input_html => { :style => "width: 120px"}
       f.input :cp,  :input_html => { :style => "width: 120px"}
       f.input :fax, :input_html => { :style => "width: 120px"}
    end
    f.inputs "Request / Source" do
       #f.input :sales_engineer, :hint => "Please put your name in uppercase example:JAMES DELA CRUZ"
       #f.input :source,  :collection => [["Website","Wesite"],["Fliers", "Fliers"],["News Paper","News Paper"]]
       f.input :inquiry, :label => "Request", :input_html => { :rows => 3 }
    end
    f.buttons
  end


  index do
    column :company_name
    column :company_address
    column :contact_person
    #column :sales_engineer
    column do |inquiry|
      link_to("Details", admin_inquiry_path(inquiry)) + " | " + \
      link_to("Edit", edit_admin_inquiry_path(inquiry)) + " | " + \
      link_to("Delete", admin_inquiry_path(inquiry), :method => :delete, :confirm => "Are you sure?")
    end
  end
end

