class ChatroomController < ApplicationController

  def index
    @messages = Messsage.all
  end

end