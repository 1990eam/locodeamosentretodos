class ChatroomsController < ApplicationController
  before_action :authenticate_user!

  def chatroom
    @chatroom = ApplicationRequest.find(params[:application_request_id]).chatroom
    @message = Message.new
    authorize @chatroom
    authorize @message
  end
end
