class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @appointments = current_user.paperworker? ? current_user.appointments_as_paperworker : current_user.appointments_as_immigrant
  end

  def confirm
    @appointment = Appointment.find(params[:appointment_id])
    @appointment.status ? confirm : decline
    @appointment.save
    redirect_to user_path(@appointment.paperworker)
  end
end
