module Stacklike

  def stack
    @stack ||= []                                                   #1
  end  

  def add_to_stack(obj)                                             #2
    stack.push(obj)
  end

  def take_from_stack                                               #3
    stack.pop
  end
end

