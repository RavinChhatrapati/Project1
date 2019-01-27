class Best50Films2018::Movie
  @@all = []
  attr_accessor :info
  def initialize(info)
    @info = info
    @@all << self

end
def self.all
  @@all
end
end
