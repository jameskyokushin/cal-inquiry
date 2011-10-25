class AddSeToInquiry < ActiveRecord::Migration
  def self.up
    add_column :inquiries, :sales_engineer, :string
  end

  def self.down
    remove_column :inquiries, :sales_engineer
  end
end
