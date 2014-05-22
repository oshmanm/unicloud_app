class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def new
	end

	def create    
    course = Course.new
    
    course.title = params[:title]
    course.schedule = params[:schedule]
    course.course_level = params[:course_level]

    course.save

    redirect_to "/courses"
  end

  def show
    @course = Course.find(params[:id])
    render :show
  end

end

