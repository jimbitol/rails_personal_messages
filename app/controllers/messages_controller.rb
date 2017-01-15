class MessagesController < ApplicationController

	before_action :fetch_message, only: [:show, :destroy]

	def index
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

	def destroy
	    @message.update(private: true)
	    false
	  end

	private

	def fetch_message
		@message = Message.find(params[:id])
	end

	def message_params
      params.require(:message).permit(:from, :subject, :body)
    end
end
