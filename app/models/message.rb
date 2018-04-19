class Message < ApplicationRecord
	validates_presence_of :username, :content
end
