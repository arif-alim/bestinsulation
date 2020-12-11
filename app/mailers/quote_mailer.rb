class QuoteMailer < ApplicationMailer
  default from: 'bestinsulation2018@gmail.com'
  TO = ["mo.shahri@yahoo.ca", "info@bottegaconstruction.com"]

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def quote_request(quote)
    @quote = quote
    mail( to: TO, subject: "Quote Request by #{@quote.name.camelcase} #{Time.current.strftime('%b %d, %Y %H:%M %p')}")
  end
end
