require 'httparty'
require 'nokogiri'

class Scraper
    puts "[exec on Scraper class def]"

    # allow access to @parse_page instance var
    attr_accessor :parse_page

    def initialize
        puts "[exec on Scraper new]"

        # response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
        page = HTTParty.get('https://store.nike.com/ca/en_gb/pw/mens-nikeid-lifestyle-shoes/1k9Z7puZoneZbr7Z816Zoi3')
        # @parse_page = @parse_page || Nokogiri::HTML(doc)
        @parse_page ||= Nokogiri::HTML(page)  # save it only once

        # require 'pry'; binding.pry

        items = parse_page.css(".grid-item-info")
        names = items.css(".product-display-name").map { |name| name.text }.compact
        prices = items.css(".grid-item-info").css(".prices").css(".local").map { |price| price.text }.compact
        
        puts names
        puts prices

    end
end

s = Scraper.new
# s2 = Scraper.new
# s3 = Scraper.new