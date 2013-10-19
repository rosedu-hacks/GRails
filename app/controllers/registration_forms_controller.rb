class RegistrationFormsController < ApplicationController
 def new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def populate
  	print params

  	redirect_to root_path
  end
end
