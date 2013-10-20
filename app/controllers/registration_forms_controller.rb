class RegistrationFormsController < ApplicationController
 def new
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
