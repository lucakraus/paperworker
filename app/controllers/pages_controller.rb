class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @appointments = current_user.paperworker? ? current_user.appointments_as_paperworker : current_user.appointments_as_immigrant
    @user = current_user

  end
end
