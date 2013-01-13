require 'nokogiri'
require 'open-uri'
require 'pry'
require 'json'

module CfaFellowScraper
  def self.get_and_save_page
    url = "http://codeforamerica.org/2013-fellows/"
    open('fellow_info.html', 'wb') { |f| f << open(url).read }
  end
  def self.scrape_and_save_data
    # To contain contain currently in script form below
  end
end

# Done once; set it and forget it
#CfaFellowScraper.get_and_save_page

doc = Nokogiri::HTML(open('fellow_info.html'))
fellows_data = Hash.new
doc.xpath('//*[@class="2012fellow"]').each do |e|
  name = e.css('.name a')[0]['name']
  fellows_data[name] = Hash.new
  fellows_data[name]['name'] = name # If we want to convert fellows_data to a simple array
  fellows_data[name]['headshot_url'] = e.css('.headshot img')[0]['src']
  fellows_data[name]['bio'] = e.css('.bio')[0].children[0].text
  fellows_data[name]['team'] = e.css('.team')[0].children[0].text
end

File.open("fellows_data.json","w") do |f|
  f.write(fellows_data.to_json)
end

#binding.pry


