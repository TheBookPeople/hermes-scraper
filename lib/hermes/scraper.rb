require 'hermes/scraper/version'

require 'pp'
require 'mechanize'
require 'date'

module Hermes
  class Scraper
    def initialize(barcode)
      @page = Mechanize.new.get(url(barcode))
    end

    def scrape
      rows = []
      tracking_text_rows.each do |tracking_text_row|
        elements = tracking_text_elements(tracking_text_row)
        validate(elements)
        rows << parse_row(elements)
      end
      rows
    end

    private

    def tracking_text_elements(tracking_text_row)
      elements = []
      tracking_text_row.children.each do |child|
        next unless child.is_a? Nokogiri::XML::Element
        elements << child.children.first.text.tr(' ', ' ').strip
      end
      elements
    end

    def validate(elements)
      raise 'Hermes tracking page format appers to have changed 8-(' unless elements.size == 3
    end

    def tracking_text_rows
      @page.search("//tr[@class='trackingText']")
    end

    def parse_row(elements)
      {
        datetime: parse_datetime(elements[0], elements[1]),
        status: elements[2]
      }
    end

    def parse_datetime(date, time)
      DateTime.strptime("#{date} #{time}", '%d/%m/%Y %H:%M')
    end

    def url(barcode)
      "http://www.hermes-europe.co.uk/customerparceltrackingservice/trackingDetailsHermes.jsp?barcode=#{barcode}"
    end
  end
end
