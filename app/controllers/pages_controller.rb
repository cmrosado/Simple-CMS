class PagesController < ApplicationController

  layout 'admin'
  
  def index
    list
    render('list')
  end  

end
