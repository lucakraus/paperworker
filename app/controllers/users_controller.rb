class UsersController < ApplicationController

  def index
    @paperworkers = User.paperworker
    # raise
    # @paperworkers = @paperworkers.where(languages: params[:languages]) if params[:languages].present?
    # @paperworkers = @paperworkers.where(district: params[:district]) if params[:district].present?
    # @paperworkers = @paperworkers.where(services: params[:services]) if params[:services].present?
    @paperworkers = @paperworkers.select { |paperworker| paperworker.languages.include?(params[:languages]) } if params[:languages].present?
    @paperworkers = @paperworkers.select { |paperworker| paperworker.district.include?(params[:district]) } if params[:district].present?
    @paperworkers = @paperworkers.select { |paperworker| paperworker.services.include?(params[:services]) } if params[:services].present?
  end

  def show
    @paperworker = User.paperworker.find(params[:id])
    if @paperworker.appointments_as_paperworker.where(immigrant: current_user).any?
      @appointment = Appointment.where(immigrant: current_user).where(paperworker: @paperworker).last
      @requested = true
    else
      @appointment = Appointment.new
      @requested = false
    end
  end
end
