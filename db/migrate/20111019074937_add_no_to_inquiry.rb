class AddNoToInquiry < ActiveRecord::Migration
  def self.up
    add_column :inquiries, :tel, :string
    add_column :inquiries, :cp, :string
    add_column :inquiries, :fax, :string
    add_column :inquiries, :source, :string
  end

  def self.down
    remove_column :inquiries, :source
    remove_column :inquiries, :fax
    remove_column :inquiries, :cp
    remove_column :inquiries, :tel
  end
end
