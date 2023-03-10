class AppointmentsController < ApplicationController


  def new
    @appointment = Appointment.new
  end

  def create
    @paperworker = User.paperworker.find(params[:user_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.paperworker = @paperworker
    @appointment.immigrant = current_user
    if @appointment.save
      redirect_to user_path(@paperworker)
    else
      render 'users/show', status: :unprocessable_entity
    end
  end

  def chat
    @appointment = Appointment.find(params[:appointment_id])
    @message = Message.new
  end

  # def confirm
  #   @appointment = Appointment.find(params[:appointment_id])
  #   @appointment.status ? confirm : decline
  #   @appointment.save
  #   redirect_to user_path(@appointment.paperworker)
  # end

  def cancel
    @appointment = Appointment.find(params[:id])
    @appointment.status = 'canceled'
    @appointment.save
    redirect_to user_path(@appointment.paperworker)
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    @appointment.save
    redirect_to dashboard_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :status)
  end
end
