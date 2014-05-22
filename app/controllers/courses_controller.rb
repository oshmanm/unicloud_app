class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def new
	end

	def create    
    @course = Course.new(params.require(:course).permit(:title))

   if @course.save
      redirect_to :index
    else
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
    render :show
  end

end