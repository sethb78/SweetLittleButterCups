class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      # TODO send message here
      redirect_to contact_path, notice: "Message sent! Thank you for contacting us, we will respond shortly."
    else
      render "new"
    end
  end
end