class Best50Films2018::CLI
def run
  puts "Hello welcome to this movie info application"
  puts "Welcome to the top 57 movies"

list_movietitle
menu
end

def list_movietitle
Best50Films2018::Scraper.scrape_movieinfo
Best50Films2018::Movie.all.each.with_index(1) do |movie, index|
if index <= 57
  puts "#{index}. #{movie.title}"
end
end
end
puts ""


def print_movie_info(movie)
  puts ""
  puts "-----------------#{movie.title}-------------------"
  puts ""
  puts movie.released
  puts ""
  puts movie.director
  puts ""
  puts movie.why
  puts ""
end

  def menu
    input = nil
    while input != "exit"
      puts "Select which movie you would like to learn about by typing number."
      puts "Type menu to see the list of movies again, or type exit to end the program."
      input = gets.strip  # Takes users input and provides access to my code> Code is getting access to users input
      if input.to_i > 0  # Returns true or false, serves as Boolean data
        if  movie = Best50Films2018::Movie.find(input.to_i) #outputs information for selected movie, based off input ( movie number)
           print_movie_info(movie)  #>> Returns nil. Prints out all the information within the method print_movie_info(movie)
        end
      elsif input == "menu"

        list_movietitle
      else
        puts "Not sure what you want? Type menu or exit." unless input == "exit"
      end
    end
  end
end
