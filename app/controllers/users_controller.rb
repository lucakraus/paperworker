class UsersController < ApplicationController

  def index
    @paperworkers = User.paperworker
    # @paperworkers = @paperworkers.where(languages: params[:languages]) if params[:languages].present?
    # @paperworkers = @paperworkers.where(district: params[:district]) if params[:district].present?
    # @paperworkers = @paperworkers.where(services: params[:services]) if params[:services].present?
    @paperworkers = @paperworkers.select { |paperworker| paperworker.languages.include?(params[:filter][:languages]) } if params.dig(:filter, :languages).present?
    @paperworkers = @paperworkers.select { |paperworker| paperworker.district.include?(params[:filter][:district]) } if params.dig(:filter, :district).present?
    @paperworkers = @paperworkers.select { |paperworker| paperworker.services.include?(params[:filter][:services]) } if params.dig(:filter, :services).present?
  end

  def show
    @paperworker = User.paperworker.find(params[:id])
    @review = Review.new

    if @paperworker.appointments_as_paperworker.where(immigrant: current_user).any?
      @appointment = Appointment.where(immigrant: current_user).where(paperworker: @paperworker).last
      @requested = true
    else
      @appointment = Appointment.new
      @requested = false
    end

  end
end
