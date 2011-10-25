class System < ActiveRecord::Base
 has_many :inquiries 
 def admin_user
   admin = AdminUser.find params[:id]
   admin.update_attributes(:sales_engineer => true)
   
 end
end
