class SnapclassController < ApplicationController
  def show

  end

  def index
  end

  def new

  end

  def create
    @user = current_snapuser
    @class = Snapclass.create(class_params)
    @class.teacher_id = @user.teacher.id
    @class.save
    flash[:notice] = "Class #{@class.title} successfully created"
    redirect_to snapuser_path(@user)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def view_classes
    @classes = Teacher.find(params[:teacher_id]).snapclasses
  end

  def class_params
    params.require(:snapclass).permit(:title, :description)
  end
end
