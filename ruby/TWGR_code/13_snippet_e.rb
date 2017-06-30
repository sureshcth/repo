class Array
  def map_with_index
    mapping = []                       #1
    each_with_index do |e,i|           #2
      mapping << yield(e,i)            #3
    end
    mapping                            #4
  end
end

