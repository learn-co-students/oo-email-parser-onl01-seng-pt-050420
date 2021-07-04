# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
  
  attr_accessor :email_addresses
  
  def initialize(csv_data)
    @csv_data = csv_data
    @@all = []
    parse
  end
  
  def parse
    data = @csv_data.split(",")
    data = data.join
    data = data.split(" ")
    
    data.each do |email|
      if @@all.include?(email)
        @@all 
      else
        @@all << email
      end
    end
    @@all
  
  end
  
  
end