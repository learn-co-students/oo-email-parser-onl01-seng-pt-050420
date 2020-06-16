class EmailAddressParser# Build a class EmailParser that accepts a string of unformatted emails. The parse method on the class should separate them into unique email addresses. The delimiters to support are commas (',') or whitespace (' ').

  attr_accessor :email_addresses, :parser

  def initialize(email_addresses)
    @email_addresses = email_addresses
    @parser = []
  end 
  
  def parse
     email_addresses.split.collect do |address|
     address.split(",")
   end
   .flatten.uniq
  end
  
end 