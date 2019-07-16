class SessionsController < ApplicationController
  def new

  end

  def create
    patient = Patient.find_by(email: params[:session][:email].downcase)


      if patient && patient.authenticate(params[:session][:password])
        session[:patient_id] = patient.id
        cookies.signed[:patient_id] = patient.id
        flash[:notice] = "Logged in"
        redirect_to patient
      else
        flash.now[:notice] = "Email or password doesn't correct"
        render 'new'
      end

  end

  def destroy
    session[:patient_id] = nil
    flash[:success] = "Logged Out"
    redirect_to root_path
  end
end