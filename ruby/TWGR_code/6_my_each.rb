class Array
  def my_each
    i = 0
    until i == size
      yield self[i]
      i += 1
    end
    self
  end
end


array = [1,2,3,4,5]
array.my_each do |item|
  puts "Next item: #{item}"
end
