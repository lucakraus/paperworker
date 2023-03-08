class UsersController < ApplicationController

  def index
    @paperworkers = User.paperworker
    # @paperworkers = @paperworkers.where(languages: params[:languages]) if params[:languages].present?
    # @paperworkers = @paperworkers.where(district: params[:district]) if params[:district].present?
    # @paperworkers = @paperworkers.where(services: params[:services]) if params[:services].present?
    @paperworkers = @paperworkers.select { |paperworker| paperworker.languages.include?(params[:filter][:languages]) } if params[:filter][:languages].present?
    @paperworkers = @paperworkers.select { |paperworker| paperworker.district.include?(params[:filter][:district]) } if params[:filter][:district].present?
    @paperworkers = @paperworkers.select { |paperworker| paperworker.services.include?(params[:filter][:services]) } if params[:filter][:services].present?
  end

  def show
    @paperworker = User.paperworker.find(params[:id])

  end

end
