class ChatroomsController < ApplicationController
  before_action :authenticate_user!

  def show
    @chatroom = Chatroom.find(params[:id])
    @application = @chatroom.application_request
    @message = Message.new
    authorize @chatroom
    authorize @message
  end
end
