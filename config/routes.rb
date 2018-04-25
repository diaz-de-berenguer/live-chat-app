Rails.application.routes.draw do
	# Action Cable will be listening for WebSocket requests on ws://localhost:3000/cable
	mount ActionCable.server => '/cable'
  root 'home#index'
end
