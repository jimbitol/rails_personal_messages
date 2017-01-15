class Message < ApplicationRecord

	after_save :email_message

	def email_message
		MessagesMailer.message_created(self).deliver
	end
end
