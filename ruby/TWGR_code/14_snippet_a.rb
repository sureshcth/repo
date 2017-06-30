def capture_block(&block)
  puts "Got block as proc"
  block.call
end
capture_block { puts "Inside the block" }
p = Proc.new { puts "This proc argument will serve as a code block." }
capture_block(&p)       #1

