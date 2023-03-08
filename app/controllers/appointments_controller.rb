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

  private

  def appointment_params
    params.require(:appointment).permit(:date)
  end
end
