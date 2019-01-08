class ContactMailer < ApplicationMailer
  default from: 'bestinsulation2018@gmail.com'
  # TO = ["ali@bestinsulation.ca", "mo@bestinsulation.ca"]
  TO = "mo@bestinsulation.ca"

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def contact_us(contact)
    @contact = contact
    mail( to: TO, subject: "Contact Us Request by #{@contact.name.camelcase} #{Time.current.strftime('%b %d, %Y %H:%M %p')}", cc: "arifalim9@gmail.com" )
  end
end
