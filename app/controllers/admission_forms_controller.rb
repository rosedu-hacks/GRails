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

  	@student = Student.find_by_user_id(params[:user_id])
    print @student.id
    @student.father_name = params[:father_name]
    @student.mother_name = params[:mother_name]
    @student.save

    @contact = Contact.new
    @contact.user_id = params[:user_id]
    @contact.cnp = params[:cnp]
    @contact.id_type = params[:id_type]
    @contact.serie = params[:serie]
    @contact.number = params[:number]
    @contact.country = params[:country]
    @contact.region = params[:region]
    @contact.city = params[:city]
    @contact.ethnicity = params[:ethnicity]
    @contact.citizenship = params[:citizenship]
    @contact.address = params[:address]
    @contact.citizenship = params[:citizenship]
    @contact.telephone = params[:telephone]
    @contact.save

    print @contact.cnp

  	redirect_to root_path
  end
end
