class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    if message.save
      # redirect_to root_path
      # sending data from message to entire channel so everyone could see it
      ActionCable.server.broadcast "chatroom_channel",
                                  foo: message.body
    end
  end

  private

  def message_params
    params.require(:messsage).permit(:body)
  end

end