class Best50Films2018::CLI
def run
  puts "Hello welcome to this movie info application"
  puts "Welcome to the top 55 movies"
Best50Films2018::Scraper.scrape_movieinfo
list_movietitle
end

def list_movietitle
Best50Films2018::Movie.all.each do |movie|
  puts "#{movie.title}"

end
end
def get_movie_method
  puts "Please select a movie you want more info about by selecting a number below"
input = gets.strip
if input.to_i.between?(1,55)
else
  get_movie_method
end
end
end
