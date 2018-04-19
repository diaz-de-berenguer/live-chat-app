module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	identified_by :user_id

  	def connect
  		self.user_id = SecureRandom.base64
  	end
  end
end
