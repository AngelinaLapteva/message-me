class ChatroomController < ApplicationController
  before_action :require_user
  
  def index
    @message = Messsage.new
    @messages = Messsage.all
  end

end