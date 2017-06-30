
module Music
  class Scale
    NOTES = %w{ c c# d d# e f f# g a a# b }

    def play
      NOTES.each {|note| yield note }
    end
  end
end
scale = Music::Scale.new
scale.play {|note| puts "Next note is #{note}" }

# scale.map {|note| note.upcase }  # Example of error

enum = scale.enum_for(:play) #1

p enum.map {|note| note.upcase } #1
p enum.select {|note| note.include?('f') } #2

