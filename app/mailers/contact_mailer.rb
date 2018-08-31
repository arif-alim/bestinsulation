class ContactMailer < ApplicationMailer
  default from: 'bestinsulation2018@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def contact_us(contact)
    @contact = contact
    mail( to: "arifalim9@gmail.com", subject: @contact.subject, cc: "bestinsulation2018@gmail.com" )
  end
end
