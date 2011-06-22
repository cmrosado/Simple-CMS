class AdminUser < ActiveRecord::Base
  # to configure a different table name
  # set_table_name("admin_users")
  
  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, :through => :sections_edits
  
  validates_presence_of :name
  
  scope :named, lambda {|first,last| where(:first_name => first, :last_name => last)}
  
end
