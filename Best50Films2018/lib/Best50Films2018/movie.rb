class Best50Films2018::Movie
  @@all = []
  attr_accessor :title, :released,:cast,:director,:why
  def initialize
    @@all << self

end
def self.all # class method
  @@all
end
def self.find(id)
  self.all[id-1]
end
end
