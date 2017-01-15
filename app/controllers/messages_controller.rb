class MessagesController < ApplicationController

	before_action :fetch_message, only: [:show, :update]

	def index
		Message.destroy_all # initialize only for demo purpose
		@messages = Message.all
	end

	def create
		@message = Message.create(message_params)
	end

	def show

	end

	def update
	    @message.private = true
	    @message.save
	 end

	private

	def fetch_message
		@message = Message.find(params[:id])
	end

	def message_params
      params.require(:message).permit(:from, :subject, :body, :copied)
    end
end
