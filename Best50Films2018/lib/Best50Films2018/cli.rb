class Best50Films2018::CLI
def run
  puts "Hello welcome to this movie info application"
  puts "Welcome to the top 55 movies"
Best50Films2018::Scraper.scrape_movieinfo
list_movietitle
end

def list_movietitle
Best50Films2018::Movie.all.each.with_index do |movie,i|
  puts "#{i}. #{movie.title}"

end
end
def get_movie_method
  puts "Please select a movie you want more info about by selecting a number below"
#input = gets.strip
end
end
