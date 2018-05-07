class MessagesChannel < ApplicationCable::Channel
	# When a new clien sends a request to subscribe to the MessagesChannel, the
	# subscribed method is executed. In this case, the client will start streaming
	# from the 'messages' stream.
  def subscribed
    stream_from "messages"
  end
end
