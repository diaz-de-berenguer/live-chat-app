class Message < ApplicationRecord
	validates_presence_of :username, :content

	after_create_commit :broadcast_message

	private

		def broadcast_message
			ActionCable.server.broadcast 'messages', {
				message:  self.content,
				username: self.username
			}
		end
end
