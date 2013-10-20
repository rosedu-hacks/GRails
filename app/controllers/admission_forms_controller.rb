class AdmissionFormsController < ApplicationController
  # GET /admission_forms/new
  # GET /admission_forms/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def populate 
    @admission = create_admission(admission_params)
    respond_to do |format|
    if @admission.save
        format.html { redirect_to root_path, notice: 'Admission form was successfully updated.' }
        format.json { head :no_content }
      else
        print "fuck"
        format.html { render action: 'new' }
        format.json { render json: @admission.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def admission_params
    params.require(:admission).permit(:field, :specialization, :payment_type)
  end
end
