require 'yaml'                                  #1
class Hash
  alias __old_set__ []=                         #2

  def []=(key, value)
    res = __old_set__(key, value)               #3
    File.open("hash_contents", "w") do |f|      #4
      f.puts(self.to_yaml)
    end
    res                                         #5
  end
end

