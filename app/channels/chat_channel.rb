class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_channel'
  end

  def unsubscribed
    # Any cleanup needed when the cable connection is terminated
  end

  def receive(data)
    ActionCable.server.broadcast('chat_channel', message: data['message'])
  end
end
