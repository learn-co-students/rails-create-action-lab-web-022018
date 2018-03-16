class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    # @student = Student.create(params) #error
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    # STDERR puts "#{params}"
    # Parameters: {"first_name"=>"first!", "last_name"=>"last"}
    # redirect_to post_path(@student) # undefined method `post_path'
    redirect_to student_path(@student) #
    # redirect_to show #(@student.id)
  end

end


# Build a working create action
# Use a form_tag to create a new form that submits to the index action
# Correctly name form fields so that they end up at the top level of the params hash
# Assign data from params to a Student object in the create action
# Save that Student object in the create action
# Create a redirect_to from the create action to the show action
