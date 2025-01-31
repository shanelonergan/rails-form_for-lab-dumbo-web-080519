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

  def create
    @student = Student.create(student_params)
    redirect_to @student
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to @student
  end

  def destroy
    @school_class = SchoolClass.find(params[:id])
    @school_class.destroy
    redirect to students_path
  end


  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
