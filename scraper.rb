require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)

    doc = Nokogiri::HTML(open(index_url))

    location_array = []

    doc.css("").each do |locale|

      location_array << {

          name: locale.css(".odd:nth-child(0)").text,

          address: locale.css(".odd:nth-child(1)").text,

          day: locale.css(".odd:nth-child(2)").text,

          hours: locale.css(".odd:nth-child(3)").text,

          borough: locale.css(".odd:nth-child(4)").text,

        }
      end
    location_array
    end

end