class SampleMailer < ApplicationMailer
  default from: 'velozo.dan@gmail.com'

  def welcome_email(welcome_message, name, email_to, subject)
    @message = welcome_message
    @name = name
    make_bootstrap_mail(to: email_to, subject: subject)
  end
end

# Send the email

# Rails Console
welcome_message = "Hello your're welcome to our platform!"
name = current_user.name
email_to = current_user.email
subject = 'Welcome Email'

SampleMailer.welcome_email(welcome_message, name, email_to, subject).deliver if email_to
