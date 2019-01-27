class Best50Films2018::Movie
  @@all = []
  attr_accessor :title, :information
  def initialize(att_hash)
    @title = att_hash[:title]
    @information = att_hash[:information]
    @@all << self

end
def self.all
  @@all
end
end
