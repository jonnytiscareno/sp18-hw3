class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new(student_params)

    @student.save
    redirect_to @student
  end
  private
  def student_params
    params.require(:student).permit(:title, :title, :title)
  end
end
