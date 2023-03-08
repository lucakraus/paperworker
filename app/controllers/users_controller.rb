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
end
