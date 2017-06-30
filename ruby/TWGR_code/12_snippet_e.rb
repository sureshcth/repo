count = 0
total_ages = File.open("members.txt") do |f|
  f.inject(0) do |total,line|
    count += 1
    fields = line.split
    age = fields[3].to_i
    total + age
  end
end

