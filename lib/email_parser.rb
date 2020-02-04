require 'pry'

class EmailAddressParser
  attr_accessor :email
  EMAIL_ADDRESSES = []

  def initialize(email)
    @email = email
    EMAIL_ADDRESSES << email
  end

  def parse
    email_parse = email.split.collect do |email|
      binding.pry
      email.split(",")
    end
    return_emails = email_parse.flatten.uniq
    return_emails
  end
end