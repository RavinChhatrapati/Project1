class Best50Films2018::Scraper
  SITE ='https://www.thrillist.com/entertainment/nation/best-movies-of-2018'
  def scrape_movie_info
    html = open(SITE)
  doc = Nokogiri::HTML(html)
  binding.pry

end
end
