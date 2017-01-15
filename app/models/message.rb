class Message < ApplicationRecord

	after_save :email_message

	def email_message
		MessageMailer.message_created(self).deliver
	end
end
