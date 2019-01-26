class Best50Films2018::Scraper
  SITE ='https://www.thrillist.com/entertainment/nation/best-movies-of-2018'
  def scrape_movie_info
    html = open(SITE)
  doc = Nokogiri::HTML(html)
   puts doc.css("section.body-text.u-color--dark-gray.u-color--entertainment-links.font--body.has-mobile-padding.is-standard")[1..-2]
binding.pry

end
end
