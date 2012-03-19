class StudentsController < ApplicationController
  def index
    
    @students = Student.all
    
  end
  
  def show
    @student = Student.find(params[:id])

  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params[:student])
    @student.save
    
    redirect_to :action=>"index"
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(params[:student])
    redirect_to :action => "index"
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to :action => "index"
  end
     


end
