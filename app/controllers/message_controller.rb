class MessageController < ApplicationController

    def create_message
      message = Message.create!(
        sender_id: params[:user_id], 
        content: params[:content]
      )
      ActionCable.server.broadcast("chat_#{99}", message)
      render json: message, status: :created
    end
  
    def message_history 
      messages = Message.all
      render json: messages, status: :ok
    end
  
  end