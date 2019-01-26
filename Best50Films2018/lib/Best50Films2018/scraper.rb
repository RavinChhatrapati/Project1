class Best50Films2018::Scraper
  SITE ='https://www.thrillist.com/entertainment/nation/best-movies-of-2018'
  def scrape_movieinfo
    html = open(SITE)
  doc = Nokogiri::HTML(html)
  # puts doc.css("section.body-text.u-color--dark-gray.u-color--entertainment-links.font--body.has-mobile-padding.is-standard")[1..-2]
array_of_movies = doc.css("h2.body-text__paragraph-header.font--h2").text
 array_of_movies.each do |movie_title|
binding.pry
 end
 end


end
