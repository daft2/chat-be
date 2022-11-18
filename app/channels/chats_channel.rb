class ChatsChannel < ApplicationCable::Channel
  def subscribed
    stop_all_streams
    # 99 is constant for chatroom id choosen randomly
    stream_from "chat_#{99}"   
  end

  def unsubscribed
    stop_all_streams
  end
end
