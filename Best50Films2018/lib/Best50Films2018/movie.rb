class Best50Films2018::Movie
  @@all = []
  attr_accessor :title
  def initialize(title)
    @title = title
    @@all << self

end
def self.all
  @@all
end
end
