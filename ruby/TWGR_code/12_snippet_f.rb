d = Dir.new("/usr/local/src/ruby/include")                           #1
entries = d.entries                                                  #2
entries.delete_if {|entry| entry =~ /^\./ }                          #3
entries.map! {|entry| File.join(d.path, entry) }                     #4
entries.delete_if {|entry| !File.file?(entry) }                      #5
print "Total bytes: "
puts entries.inject(0) {|total, entry| total + File.size(entry) }    #6

