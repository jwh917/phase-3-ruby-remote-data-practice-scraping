require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

# Nokogiri::HTML(html)
# doc = Nokogiri::HTML(html)


doc = Nokogiri::HTML(open("http://flatironschool.com/"))
# doc.css(".headline-26OIBN")
# doc.css(".headline-26OIBN").text

# puts doc.css(".headline-26OIBN")

# doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses.each do |course|
  puts course.text.strip
end

p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].name
p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].attributes


