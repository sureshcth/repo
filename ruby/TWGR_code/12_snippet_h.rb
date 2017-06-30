newdir = "/tmp/newdir"               #1
newfile = "newfile"

Dir.mkdir(newdir)                    #2
Dir.chdir(newdir) do                          #3
  File.open(newfile, "w") do |f|              #4
    f.puts "Sample file in new directory"
  end

  puts "Current directory: #{Dir.pwd}"       #5
  puts "Directory listing: "
  p Dir.entries(".")                         #6

  File.unlink(newfile)                       #7

end

Dir.rmdir(newdir)                            #8

print "Does #{newdir} still exist? "
if File.exist?(newdir)                         #9
  puts "Yes"
else
  puts "No"
end

