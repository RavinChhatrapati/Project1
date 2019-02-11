class Best50Films2018::Movie
  @@all = [] # Accessible anywhere in our class, both in class and instance methods
  attr_accessor :title, :released,:cast,:director,:why
  def initialize
    @@all << self  # represents a movie that has a title. Self can function as either a class or instance method

end
def self.all # class method refers to entire class itself. Inside of class only NOT inside of an instance of a class.
  @@all      # returns what is being stored in line 2, which is functioning together with line 5
end
def self.find(id)
  self.all[id-1]
end
end
