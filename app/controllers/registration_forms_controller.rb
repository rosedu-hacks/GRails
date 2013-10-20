class RegistrationFormsController < ApplicationController
 def new
    @student = get_student_info
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student }
    end
  end

  def populate
  	print params

  	redirect_to root_path
  end
end
