class RepliesController < ApplicationController
  before_action :authenticate_user!

  def new
    @email = Email.find(params[:email_id])
    @reply = @email.replies.new
  end

  def create
    @email = Email.find(params[:email_id])
    @reply = @email.replies.new(sender: current_user.email, body: params[:reply][:body])
    if @reply.save
      redirect_to @email
    else
      render 'new'
    end
  end


  private
  def reply_params
    params.require(:reply).permit(:email_id, :body)
  end
end
