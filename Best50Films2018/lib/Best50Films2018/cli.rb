class Best50Films2018::CLI
def run
  puts "Hello welcome to this Movie info application"
#html = open(https://www.thrillist.com/entertainment/nation/best-movies-of-2018)
doc = Nokogiri::HTML(html)
 puts doc.css(body-text)
end
end
