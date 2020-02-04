class EmailAddressParser
  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def parse
    email_parse = email.split.collect do |email|
      email.split(",")
    end
    return_emails = email_parse.flatten.uniq
    return_emails
  end
end