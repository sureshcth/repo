def block_as_closure
  str = "Hello"
  1.times { str << " there." }  # Use the variable str in a block, modifying it
  puts str
end

block_as_closure                # Output: "Hello there."

