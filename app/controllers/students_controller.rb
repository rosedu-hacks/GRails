class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @student = Student.find_by_user_id(current_user.id)
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    if !Student.find_by_user_id(current_user.id).nil?
      redirect_to 'update'
    end

    @student = Student.new(student_params)
    @student.status = 'new'

    @contact = create_contact contact_params

    respond_to do |format|
      if @student.save && @contact.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student }
      else
        format.html { render action: 'new' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    @contact =  get_contact
    respond_to do |format|
      if @student.update(student_params) && @contact.update(contact_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

  def show_connections
    @students = connections
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find_by_user_id(current_user.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:mother_name, :father_name, :status, :user_id)
    end

    def contact_params
      params.require(:contact).permit(:user_id, :id_type, :cnp, :serie, :number,
        :country, :region, :city, :citizenship, :address, :telephone, :ethnicity)
    end
end
