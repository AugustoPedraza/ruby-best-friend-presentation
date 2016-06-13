require 'nokogiri' #NOTE: Don't forget install this gem
require 'open-uri'

base_uri = "http://torrentbutler.eu/page/1"

doc = Nokogiri::HTML(open(base_uri))
movie_paths = doc.css("a.movie").map { |movie| movie['href'] }

found_movies = []

movie_paths.each do |p|
  doc_node = Nokogiri::HTML(open("http://torrentbutler.eu/#{p}"))
  title = doc_node.css('.content .header > h2.title').text
  puts "Searching link to '#{title}'..."

  hd_table_node = doc_node.css("#torrents-listings > div.torrents-container > div > div.high_definition > table")
  hd_link_node = hd_table_node.css('a.download:first-child').first


  unless hd_link_node
    puts "Not HD found!"
  else
    link = hd_link_node['href']
    puts "Link found: \n\t#{link}"
    found_movies << [title, link]
  end
end

#TODO: persist the data from found_movies
#TODO: iterate this code to get the last 10 pages (Trick: uses updownto)

