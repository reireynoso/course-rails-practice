class EnrollmentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    # byebug
    @enrollment = Enrollment.new 
  end

  def create
    # byebug
    @enrollment = Enrollment.create(params.require(:enrollment).permit(:course_id, :student_id))
    @student = Student.find(params[:enrollment][:student_id])
    redirect_to student_path(@student)
  end

  def update
  end

  def destroy
    # byebug
    @enrollment = Enrollment.find(params[:id])
    @student = Student.find(@enrollment.student.id)
    @enrollment.destroy
    redirect_to student_path(@student)
  end
end
