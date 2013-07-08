class NotificationsMailer < ActionMailer::Base

  default :from => ENV['SENDGRID_USERNAME']
  default :to => "groceryotg@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end

end