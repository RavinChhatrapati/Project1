class Best50Films2018::Scraper
  SITE ='https://www.thrillist.com/entertainment/nation/best-movies-of-2018'
  def self.scrape_movieinfo
    html = open(SITE)
  doc = Nokogiri::HTML(html)
  # puts doc.css("section.body-text.u-color--dark-gray.u-color--entertainment-links.font--body.has-mobile-padding.is-standard")[1..-2].text
  info = doc.css("section.body-text.u-color--dark-gray.u-color--entertainment-links.font--body.has-mobile-padding.is-standard div.body-text__content")[1..-2]
  info.each do |movie_info|                                                                  #provides title and information of each movie

attributes ={}
  attributes[:title] = movie_info.css("h2.body-text__paragraph-header.font--h2 em").text        # provides title of each movie
 movie_info.css("p.body-text__paragraph-text.font--body.has-spacing").each do |movie_details| # provides details of each movie

separated_text = movie_details.text.split(/(?<=\d)(?=\p{L})|([a-z])([A-Z])/) #targts numbers that were conencted with letters
binding.pry
separated_text.each.with_index do |str, i|

  if str.length == 1 && (i == 2 || i == 5)
    separated_text[i-1] << str #add string to end of previous string
    separated_text[i] = nil #replace string will nil to remove quickly later
  elsif str.length == 1 && (i == 3 || i == 6)
    separated_text[i+1].prepend(str) #add string to beginning of next string
    separated_text[i] = nil #replace string will nil to remove quickly later
  end
end
binding.pry
separated_text.compact! #removes inserted nils
separated_text.slice!(4..-1) #removes split text for strings with 'iTunes' or 'YouTube'
#attributes[]:released] = movie_details.css("p.body-text__paragraph-text.font--body.has-spacing")[2..-2]

movie = Best50Films2018::Movie.new(attributes)

end
end
end
end
