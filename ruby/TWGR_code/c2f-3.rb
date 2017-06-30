class Temperature
  def Temperature.c2f(f)
    f * 9 / 5 + 32
  end

  def Temperature.f2c(c)
    (c - 32) * 5 / 9
  end
end

puts Temperature.c2f(100)
