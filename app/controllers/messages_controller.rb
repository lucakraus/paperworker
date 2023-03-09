class MessagesController < ApplicationController

  def create
    @appointment = Appointment.find(params[:appointment_id])
    @message = Message.new(message_params)
    @message.appointment = @appointment
    @message.user = current_user
    if @message.save
      redirect_to appointment_chat_path(@appointment)
    else
      render "appointment_chat/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
