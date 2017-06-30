c = C.new
class << c
  include M
  p ancestors
end

class C
  include M
end

class << c
  p ancestors
end

