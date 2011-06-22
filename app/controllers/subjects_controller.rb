class SubjectsController < ApplicationController
  
  layout 'admin'
  
  def index
    redirect_to(:action => 'list')
  end
  
  def list
    @subjects = Subject.order("subjects.position ASC")
  end
  
  def show
    @subject = Subject.find(params[:id])
  end
  
  def new
    @subject = Subject.new(:name => 'default')
    @subject_count = Subject.count + 1
  end
  
  def create
    @subject = Subject.new(params[:subject])
    # if succeed, go
    if @subject.save
      flash[:notice] = "Subject created."
      redirect_to(:action => 'list')
    else
      # if save fails, redisplay form for user with rest of fields populated
      @subject_count = Subject.count
      render('new')
    end
  end
  
  def edit
    @subject = Subject.find(params[:id])
    @subject_count = Subject.count
  end
  
  def update
    # find object using form stuff
    @subject = Subject.find(params[:id])
    # update the field
    if @subject.update_attributes(params[:subject])
      flash[:notice] = "Subject Updated."
      redirect_to(:action => 'list')
    else
      # if update fails, redisplay form for user with rest of fields populated
      @subject_count = Subject.count
      render('edit')
    end    
  end
  
  def delete
    @subject = Subject.find(params[:id])
  end
  
  def destroy
    Subject.find(params[:id]).destroy
    flash[:notice] = "Subject Destroyed."
    redirect_to(:action => 'list')
  end
  
end
