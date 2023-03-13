class ChatChannel < ApplicationCable::Channel
  def subscribed
    chat = Appointment.find(params[:id])
    # stream_from "chat-#{appointment.id}"
    stream_for chat
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
