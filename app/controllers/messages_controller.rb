class MessagesController < ApplicationController
    def index
        @messages = Message.all.order(:id)
        render :json => @messages
    end

    def create 
        @message = Message.create(sender: params[:sender], receiver: params[:receiver], message: params[:message])
        render :json => @messages    
    end
end
