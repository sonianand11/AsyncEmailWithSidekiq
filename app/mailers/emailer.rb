class Emailer < ActionMailer::Base
  default from: '***@gmail.com'
  def config_for_email
    mail to: "***@gmail.com"
  end
  
end
