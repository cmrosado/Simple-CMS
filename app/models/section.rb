class Section < ActiveRecord::Base
  
  belongs_to :page
  has_many :section_edits
  has_many :editors, :through => :sections_edits, :class_name => "AdminUser"
  
  content_types = ['text', 'html']
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  validates_inclusion_of :content_type, :in => content_types, 
  :message => "must be one of: #{content_types.join(', ')}"
  validates_presence_of :content
  
end
