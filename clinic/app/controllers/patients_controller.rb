class PatientsController < ApplicationController

  def new
    @patient = Patient.new
  end

  def show
    @patient = Patient.find(params[:id])
  end
  def edit
    @patient = Patient.find(params[:id])
  end
  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      flash[:notice] = "Updated"
       redirect_to patient_path(@patient)
    else
      render 'edit'
    end
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patient_path(@patient)
    else
      render 'new'
    end
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :surname, :email, :pesel, :password, :password_confirmation)
  end
end