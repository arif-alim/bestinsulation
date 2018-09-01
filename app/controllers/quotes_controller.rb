class QuotesController < ApplicationController
  def create
    @quote = Quote.new(params[:quote])
    if QuoteMailer.quote_request(@quote).deliver
      flash[:success] = "Thank you for quote request, we'll be in touch with you shortly."
    else
      flash[:error] = "Sorry, something went wrong. Please refresh the page and try again."
    end
  end
end
