require 'pry'

class EmailParser
  attr_accessor :email
  EMAIL_ADDRESSES = []

  def initialize(email)
    @email = email
    EMAIL_ADDRESSES << email
  end

  def parse
    email_parse = email.split.collect do |email|
      email.split(",")
    end
    return_emails = email_parse.flatten.uniq
    binding.pry
    return_emails
  end
end