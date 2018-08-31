class ApplicationController < ActionController::Base
  def callback_form
    @callback = Callback.new
  end
end
