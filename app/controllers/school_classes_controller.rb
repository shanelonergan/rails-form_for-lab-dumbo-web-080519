class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    # byebug
    @school_class = SchoolClass.create(school_class_params)
    redirect_to @school_class
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to @school_class
  end

  def destroy
    @school_class = SchoolClass.find(params[:id])
    @school_class.destroy
    redirect to school_classes_path
  end


  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
