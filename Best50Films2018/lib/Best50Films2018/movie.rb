class Best50Films2018::Movie
  @@all = []
  attr_accessor :title, :released,:cast,:director,:why
  def initialize(att_hash)
    @title = att_hash[:title]
    @released = att_hash[:released]
    @cast = att_hash[:cast]
    @director = att_hash[:director]
    @why = att_hash[:why]

    @@all << self

end
def self.all # class method
  @@all

end
end
