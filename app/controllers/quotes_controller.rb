class QuotesController < ApplicationController
  def create
    @quote = Quote.new(params[:quote])
    if QuoteMailer.quote_request(@quote).deliver
      flash[:success] = 'Thank you for your message. We will contact you shortly!'
      # redirect_to contact_us_home_index_path
    else
      flash[:error] = 'Cannot send message.'
      # redirect_to contact_us_home_index_path
    end
  end
end
