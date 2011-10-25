class Inquiry < ActiveRecord::Base
 
 def admin_user
   admin = AdminUser.find params[:id]
   admin.update_attributes(:sales_engineer => true)
   
 end
end
