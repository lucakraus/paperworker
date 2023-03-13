class MessagesController < ApplicationController

  def create
    @appointment = Appointment.find(params[:appointment_id])
    @message = Message.new(message_params)
    @message.appointment = @appointment
    @message.user = current_user
    if @message.save
      ChatChannel.broadcast_to(
        @appointment,
        render_to_string(
          partial: "messages/message",
          locals: { message: @message }
        )
      )
      head :ok
    #   redirect_to appointment_chat_path(@appointment)
    else
      render "appointment_chat/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :title, :body, :photo)
  end
end
