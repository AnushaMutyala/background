class ContactMailer < ApplicationMailer
  default from: 'anusha242316@gmail.com'

  CONTACT_EMAIL = "swamulumuthyala@gmail.com"

  def submission(message)
    @message = message
    mail to: CONTACT_EMAIL, subject:"New contact page submission"
  end
end