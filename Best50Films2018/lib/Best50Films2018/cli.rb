class Best50Films2018::CLI
def run
  puts "Hello welcome to this movie info application"
  puts "Welcome to the top 55 movies"
Best50Films2018::Scraper.scrape_movietitle
list_movies
end
def list_movies
Best50Films2018::Movie.all.each.with_index(1) do |movie,index|
  puts "#(index). #(movie.title)"

end
end
end
