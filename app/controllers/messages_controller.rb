class MessagesController < ApplicationController
    def create
      @message = Message.new(message_params)
  
      if @message.save
        render json: { status: 'Message created successfully' }, status: :ok
      else
        render json: { error: @message.errors.full_messages }, status: :bad_request
      end
    end
  
    private
  
    def message_params
        params.require(:message).permit(:content)
    end
  end
  