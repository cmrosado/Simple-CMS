class Subject < ActiveRecord::Base
  
  has_many :pages
  
  validates_presence_of :name
  
  scope :visible, where(:visibile => true)
  scope :invisible, where(:visibile => false)
  scope :search, lambda {|query| where(["name LIKE?", "%#{query}%"])}
  
end
