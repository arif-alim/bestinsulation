class Quote < MailForm::Base
  attribute :name,          :validate => true
  attribute :number,        :validate => true
  attribute :email,         :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :address,       :validate => true
  attribute :city,          :validate => true
  attribute :postal,        :validate => true
  attribute :servicearea,       :validate => true
  attribute :sqft,          :validate => true
  attribute :description,   :validate => true
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
end
