class CreateInquiries < ActiveRecord::Migration
  def self.up
    create_table :inquiries do |t|
      t.string :company_name
      t.string :company_address
      t.string :contact_person
      t.string :contact_number
      t.text :inquiry

      t.timestamps
    end
  end

  def self.down
    drop_table :inquiries
  end
end
