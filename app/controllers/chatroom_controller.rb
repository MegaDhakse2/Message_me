class ChatroomController < ApplicationController
  before_action :user_security
  protect_from_forgery

  def index
    @message = Message.new
    # @messages = Message.custom_data
    # if we use above custom_data that method is defined in message.rb model.Depends upon that @messages will get values.
    @messages = Message.all
    #rails also see for the view folder named messages becoz, Message is a resource model here
  end

  def create
    # @message = Message.new(message_params)
    # @message.user_id = session[:user_id]

    @message = current_user.messages.build(message_params)
    # @message = current_user.messages.create(body: message_params[:body])
    if @message.save
      # flash[:success] = "Object successfully created"
      # ActionCable.server.broadcast "chatroom_channel", foo: @message.body
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
