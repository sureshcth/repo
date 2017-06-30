str = "I am a string"
class << str
  def twice
    self + " " + self
  end
end

puts str.twice

