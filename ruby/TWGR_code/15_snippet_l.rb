class C
end

c = C.new               #1

class << c              #2
  def x
  end

  def y
  end

  def z
  end

  protected :y          #3
  private :z
end

p c.singleton_methods.sort   #4

