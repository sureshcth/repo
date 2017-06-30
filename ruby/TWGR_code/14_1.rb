def call_some_proc(pr)
  a = "irrelevant 'a' in method scope"                                #1
  puts a
  pr.call                                                             #2
end

a = "'a' to be used in Proc block"                                    #3
pr = Proc.new { puts a }
pr.call
call_some_proc(pr)

