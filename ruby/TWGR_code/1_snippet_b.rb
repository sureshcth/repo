namespace :admin do                               #1
  desc "Interactively delete all files in /tmp"   #2
  task :clean_tmp do
    Dir["/tmp/*"].each do |f|                     #3
      next unless File.file?(f)                   #4
      print "Delete #{f}? "                       #5
      answer = $stdin.gets
      case answer
      when /^y/
        File.unlink(f)                            #6
      when /^q/
        break                                     #7
      end
    end
  end
end

