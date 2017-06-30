class Lister < BasicObject

  attr_reader :list

  def initialize                      #1
    @list = ""
    @level = 0
  end

  def indent(string)                  #2
    " " * @level + string.to_s
  end

  def method_missing(m, &block)      #3
    @list << indent(m) + ":"         #4
    @list << "\n"
    @level += 2                      #5
    @list << indent(yield(self)) if block   #6
    @level -= 2
    @list << "\n"
    return ""                        #7
  end
end

# The sample code from the text:

lister = Lister.new

lister.groceries do |item|
  item.name { "Apples" }
  item.quantity { 10 }
  item.name { "Sugar" }
  item.quantity { "1 lb" }
end

lister.freeze do |f|
  f.name { "Ice cream" }
end

lister.inspect do |i|
  i.item { "car" }
end

lister.sleep do |s|
  s.hours { 8 }
end

lister.print do |document|
  document.book { "Chapter 10" }
  document.letter { "to editor" }
end

puts lister.list

