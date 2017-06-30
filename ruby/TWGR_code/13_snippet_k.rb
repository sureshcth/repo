module GsubBangModifier          #1
  def gsub!(*args, &block)       #2
    super || self                #3
  end
end

str = "Hello there!"
str.extend(GsubBangModifier)     #4
str.gsub!(/zzz/,"abc").reverse!  #5
puts str

