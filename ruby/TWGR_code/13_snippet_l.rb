require 'rubygems'
require 'builder'

xml = Builder::XmlMarkup.new(:target => STDOUT, :indent => 2)   #1

xml.instruct!                                        #2

xml.friends do                                       #3
  xml.friend(:source => "college") do
    xml.name("Joe Smith")
    xml.address do
      xml.street("123 Main Street")
      xml.city("Anywhere, USA 00000")
    end
  end
end

