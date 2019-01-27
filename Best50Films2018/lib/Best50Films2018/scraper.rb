class Best50Films2018::Scraper
  SITE ='https://www.thrillist.com/entertainment/nation/best-movies-of-2018'
  def self.scrape_movieinfo
    html = open(SITE)
  doc = Nokogiri::HTML(html)
  # puts doc.css("section.body-text.u-color--dark-gray.u-color--entertainment-links.font--body.has-mobile-padding.is-standard")[1..-2].text
  info = doc.css("section.body-text.u-color--dark-gray.u-color--entertainment-links.font--body.has-mobile-padding.is-standard")[1..-2]
  info.each do |movie_info|
attributes =
{title: movie_info.css("h2.body-text__paragraph-header.font--h2").text

}
#title = doc.css("h2.body-text__paragraph-header.font--h2")
 #title.each do |movie_title|
movie = Best50Films2018::Movie.new(attributes)

end
end

end
