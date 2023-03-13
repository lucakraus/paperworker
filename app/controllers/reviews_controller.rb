class ReviewsController < ApplicationController
  before_action :set_user, only: %i[new create]
  before_action :set_appointment, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.appointment = Appointment.find(params[:appointment_id])
    @review[:reviewee_id] = @review.appointment.paperworker_id
    if @review.save
      redirect_to dashboard_path
    else
      render "users/show", status: :unprocessable_entity
    end
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:appointment_id])
  end

  def set_user
    @user = current_user
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
