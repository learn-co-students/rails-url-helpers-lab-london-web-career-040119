class StudentsController < ApplicationController
  before_action :set_student, only: :show	  before_action :set_student, only: :show

   def index	  def index
    @students = Student.all
  end


   def show	  def show
    @student = Student.find(params[:id])
    @active_status = @student.active ? 'active' : 'inactive'
  end

   def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end


   private	  private


     def set_student	  def set_student
      @student = Student.find(params[:id])	    @student = Student.find(params[:id])
    end	  
end
