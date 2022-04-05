class EmailsController < ApplicationController
  before_action :authenticate_user!

  def index
    @emails = Email.where(user_id: current_user.id)
    @replies = Reply.where(reciver: current_user.email)
    @replies.each do |reply|
      @emails += Email.where(id: reply.email_id)
    end
  end

  def show
    @email = Email.find(params[:id])
    @replies = @email.replies.all
  end

  def new
    @email = Email.new
  end

  def create
    if User.exists?(email: email_params[:reciver])
      reciver = User.find_by(email: email_params[:reciver])
      send_email(reciver)
    else
      redirect_to new_email_path, notice: 'The email address you entered does not exist in our system. Please try again.'
    end
  end

  def send_email(reciver)
    new_params = { sender: current_user.email, reciver: reciver.email, subject: email_params[:subject],
                   body: email_params[:body] }
    @email = reciver.emails.new(new_params)
    if @email.save
      redirect_to emails_path, notice: 'Email sent successfully'
    else
      render :new, notice: 'Email could not be sent'
    end
  end
  
  def destroy 
    @email = Email.find(params[:id])
    @email.destroy
    redirect_to emails_path
  end

  private
  def email_params
    params.require(:email).permit(:sender, :reciver, :subject, :body)
  end
end
