# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser 
  attr_accessor :email_address
  
  def initialize(unformatted_email)
    @email_address = unformatted_email
  end
  
  def parse 
    @email_address.split(/[\,\s]+/).uniq
  end
end