module DCCharacters
  class Scrapper
    BASEURL = "https://www.dccomics.com/characters"

    def self.list_of_characters(dc_characters_url)
      html = Nokogiri::HTML(open(dc_characters_url))
      links = html.css("div.pane-content div.views-row div.grid-title a")
      # links[8]
      links.slice(8, links.length)
    end

  end

end
