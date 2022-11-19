class ChatsChannel < ApplicationCable::Channel
  def subscribed
    stop_all_streams
    # 999 is constant for chatroom id prod choosen randomly
    stream_from "chat_#{999}"   
  end

  def unsubscribed
    stop_all_streams
  end
end
