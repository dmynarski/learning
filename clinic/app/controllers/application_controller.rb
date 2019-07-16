class ApplicationController < ActionController::Base

helper_method :current_patient, :logged_in?

  def current_patient
    @current_patient ||= Patient.find(session[:patient_id]) if session[:patient_id]
  end

  def logged_in?
    !!current_patient
  end
end
