class MessagesController < ApplicationController

	def index
		@messages = Message.find_by_private(false)
	end

	def create

	end
end
