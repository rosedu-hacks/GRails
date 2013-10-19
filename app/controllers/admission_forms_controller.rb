class AdmissionFormsController < ApplicationController
  # GET /admission_forms/new
  # GET /admission_forms/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def populate
  	print params
  	@first_name = params[:first_name]
  	print @first_name

  	#@student = Student.find(params[:user_id])

  	redirect_to root_path
  end
end
