class Best50Films2018::CLI
def run
  puts "Hello welcome to this movie info application"
  puts "Welcome to the top 55 movies"
    puts "Please select a movie you want more info about by selecting a number below"
Best50Films2018::Scraper.scrape_movieinfo
list_movietitle
end

def list_movietitle
@listed_movies = Best50Films2018::Movie.all.each do |movie|
  puts "#{movie.title}"

end
end
def get_movie_method
index = input.to_i -1
input = gets.strip
if input.to_i.between?(1,55)
  @listed_movies[index]
else
  puts "Sorry I do not understand that command. Please try again."
  get_movie_method
end
end
end
