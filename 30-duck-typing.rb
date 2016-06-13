def nice_printer(entity)
  if entity.respond_to?(:yodlee_id)
    puts "Name: #{entity.name}(#{entity.yodlee_id}) - Url: #{entity.url}"
  else
    puts "Name: #{entity.name} - Url: #{entity.url}"
  end
end

module Describable
  attr_accessor :name, :url
end

class YodleeInstitution
  include Describable

  attr_accessor :yodlee_id
end

class Institution
  include Describable

  attr_accessor :name, :url
end

y_institution = YodleeInstitution.new.tap do |i|
  i.name      = "Chase Bank"
  i.url       = "www.chase.com"
  i.yodlee_id = 123
end

institution  = Institution.new.tap do |i|
  i.name = "Bank of American"
  i.url  = "boa.com"
end

nice_printer y_institution
nice_printer institution

