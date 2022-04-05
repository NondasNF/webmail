class EmailsController < ApplicationController
  before_action :authenticate_user!

  def index
    @emails = Email.where(user_id: current_user.id)
  end

  def show
    @email = Email.find(params[:id])
  end

  def new
    @email = Email.new
  end

  def create
    if User.exists?(email: email_params[:reciver])
      reciver = User.find_by(email: email)
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
      redirect_to emails_path
      @message = 'Email sent successfully'
    else
      render :new
    end
  end

  private
  def email_params
    params.require(:email).permit(:sender, :reciver, :subject, :body)
  end
end
