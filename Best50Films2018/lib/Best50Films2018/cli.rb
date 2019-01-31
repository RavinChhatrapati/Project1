class Best50Films2018::CLI
def run
  puts "Hello welcome to this movie info application"
  puts "Welcome to the top 55 movies"

Best50Films2018::Scraper.scrape_movieinfo
list_movietitle
puts "Please select a movie you want more info about by selecting a number below"
obtain_movie_method
end

def list_movietitle
@listed_movies = Best50Films2018::Movie.all.each do |movie|
  puts "#{movie.title}"

end
end
def obtain_movie_method
input = gets.strip
index = input.to_i - 1
if index.between?(1,54)
binding.pry
  @listed_movies[index]
else
  puts "Sorry that command is invalid. Please try again."
  obtain_movie_method
end
end
end
