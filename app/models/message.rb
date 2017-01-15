class Message < ApplicationRecord

	after_create :email_message

	def email_message
		MessagesMailer.message_created(self).deliver
	end
end
