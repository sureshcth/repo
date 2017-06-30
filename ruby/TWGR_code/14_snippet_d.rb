def multiplier(m)
  Proc.new {|x| puts x * m }
end

mult = multiplier(10)
mult.call(12)          #1

