class C
  def initialize
    @x = 1
  end
end

c = C.new
c.instance_eval { puts @x }

