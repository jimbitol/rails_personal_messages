class MessagesController < ApplicationController

	def index
		@message = Message.new
		@messages = Message.all
	end

	def create
		@message = Message.create(message_params)

	    respond_to do |format|
	      format.js
	    end
	end

	def show

	end

	private

	def message_params
      params.require(:message).permit(:from, :subject, :body)
    end
end
