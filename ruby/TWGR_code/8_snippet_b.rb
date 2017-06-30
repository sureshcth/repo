a = <<EOM.to_i * 10
5
EOM
puts a


array = [1,2,3, <<EOM, 4,5,6]
This is the here-doc!
It becomes array[3].
EOM

p array


