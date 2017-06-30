class Person
  PEOPLE = []                              #1
  attr_reader :name, :hobbies, :friends    #2

  def initialize(name)
    @name = name
    @hobbies = []                          #3
    @friends = []
    PEOPLE << self                         #4
  end

  def has_hobby(hobby)                     #5
    @hobbies << hobby
  end

  def has_friend(friend)
    @friends << friend
  end

# Continues in 4_13.rb
