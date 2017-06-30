def return_test
  l = lambda { return }
  l.call                                                             #1
  puts "Still here!"
  p = Proc.new { return }
  p.call                                                             #2
  puts "You won't see this message!"                                 #3
end

return_test

