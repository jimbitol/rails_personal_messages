class MessagesController < ApplicationController

	def index
		@message = Message.new
		@messages = Message.find_by_private(false)
	end

	def create
		@message = Message.create(message_params)

	    respond_to do |format|
	      format.js
	    end
	end

	def show

	end
end
