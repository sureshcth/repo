# Continuation of 4_12.rb

  def self.method_missing(m, *args)
    method = m.to_s
    if method.start_with?("all_with_")                #1
      attr = method[9..-1]                            #2
      if self.public_method_defined?(attr)            #3
        PEOPLE.find_all do |person|                   #4
          person.send(attr).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"     #5
      end
    else
      super                                           #6   
    end
  end
end


