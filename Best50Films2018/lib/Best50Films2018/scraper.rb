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

#attributes[:released] = movie_details.css("p.body-text__paragraph-text.font--body.has-spacing")[2..-2]


#title = doc.css("h2.body-text__paragraph-header.font--h2")
 #title.each do |movie_title|
movie = Best50Films2018::Movie.new(attributes)

end
end
end
end
