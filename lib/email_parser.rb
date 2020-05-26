# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :parse

  def initialize(email_addresses)
    @parsed_addresses = []
    @email_addresses = email_addresses

  end

  def parse
    remove_commas = @email_addresses.delete(",")
    split_emails = remove_commas.split(" ")
    split_emails.uniq
  end
end
