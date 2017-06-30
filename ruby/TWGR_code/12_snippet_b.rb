File.open("records.txt") do |f|                                     #1
  while record = f.gets                                             #2
    name, nationality, instrument, dates = record.chomp.split('|')  #3
    puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}. " #4
  end
end

