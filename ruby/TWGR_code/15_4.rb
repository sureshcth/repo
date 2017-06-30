overrides = {}                                               #1
enum_classes = ObjectSpace.each_object(Class).select do |c|  #2
  c.ancestors.include?(Enumerable)
end

enum_classes.sort_by {|c| c.name}.each do |c|                #3
  overrides[c] = c.instance_methods(false) &
                 Enumerable.instance_methods(false)
end

overrides.delete_if {|c, methods| methods.empty? }           #4
overrides.each do |c,methods|                                #5
  puts "Class #{c} overrides: #{methods.join(", ")}"
end

