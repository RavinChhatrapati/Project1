class Best50Films2018::Movie
  @@all = []
  attr_accessor :title
  def initialize(att_hash)
    @title = att_hash[:title]
    @@all << self

end
def self.all
  @@all
end
end
