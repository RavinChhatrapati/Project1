class Best50Films2018::CLI
def run
  puts "Hello welcome to this Movie info application"
Best50Films2018::Scraper.new.scrape_movie_info
end
end
