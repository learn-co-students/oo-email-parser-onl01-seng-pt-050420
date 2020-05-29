
class EmailAddressParser
  attr_accessor :email_list, :emails
  
  def initialize(emails)
    @email_list = []
    @emails = emails
  end
  
  def parse
    parsed = emails.gsub(", ", " ").split(" ") 
    parsed.each do |email| 
      string = email.to_s
      @email_list << string
    end
    @email_list.uniq
  end
  
end

  
  
