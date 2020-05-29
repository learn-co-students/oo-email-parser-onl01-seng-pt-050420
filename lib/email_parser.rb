# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end

  def parse
    split_emails = emails.split.collect {|email_address| email_address.split(",")}
    email_list = split_emails.flatten.uniq
    email_list
  end
end
