module DeCommenter
  def self.decomment(infile, outfile, comment_re = /\A\s*#/)
    infile.each do |inline|
      outfile.print inline unless inline =~ comment_re
    end
  end
end


require 'stringio'                        

string = <<EOM                            #2
# This is a comment.
This isn't a comment.
# This is.
   # So is this.
This is also not a comment.
EOM

infile = StringIO.new(string)                     #3
outfile = StringIO.new("")

DeCommenter.decomment(infile,outfile)             #4

puts "Test succeeded" if outfile.string == <<EOM  #5
This isn't a comment.
This is also not a comment.
EOM

