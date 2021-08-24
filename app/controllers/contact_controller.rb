class ContactController < ApplicationController
	
  def new
  end

  def create
    ContactWorkerWorker.perform_async params.permit(:message)[:message]
    flash.now[:notice] = "Email Sent Successfully"
    render :new
  end
end
