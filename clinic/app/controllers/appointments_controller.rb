class AppointmentsController < ApplicationController


  def new
    @appointment = Appointment.new
  end

  def index

  end
  def show
    @appointment = Appointment.find(params[:id])
  end
  def edit
    @appointment = Appointment.find(params[:id])
  end
  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      flash[:notice] = "Updated"
       redirect_to appointment_path(@appointment)
    else
      render 'edit'
    end
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.patient = current_patient
    @appointment.doctor_id = 3
       if @appointment.save
      redirect_to appointment_path(@appointment)
      flash[:notice] = "Created"
    else
      flash[:notice] = @appointment.errors.full_messages
      render 'new'
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id]).destroy
    flash[:notice] = "Appointment Canceled"
    redirect_to root_path
  end

  private
  def appointment_params
    params.require(:appointment).permit(:description, :date, :name)
  end
end
