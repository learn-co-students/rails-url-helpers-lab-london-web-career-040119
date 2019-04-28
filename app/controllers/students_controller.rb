class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    # if @student.active == false
    #   @status_active = "This student is currently inactive."
    # else
    #   @status_active = "This student is currently active."
  end

    def activate
      @student = Student.find(params[:id])
      @student.active = !@student.active
      @student.save
      redirect_to student_path(@student)
    end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
