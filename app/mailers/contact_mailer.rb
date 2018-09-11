class ContactMailer < ApplicationMailer
  default from: 'bestinsulation2018@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def contact_us(contact)
    @contact = contact
    mail( to: "ali@bestinsulation.ca", subject: "#{@contact.subject} #{Time.current.strftime('%b %d, %Y %H:%M %p')}", cc: "bestinsulation2018@gmail.com" )
  end
end
