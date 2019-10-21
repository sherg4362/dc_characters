module DCCharacters
  class Scrapper

    def self.character_name_url
      count = 0
      list = []

      doc = Nokogiri::HTML(open("https://www.dccomics.com/"))
      elemLinks = doc.css("div.grid-title a")
      puts elemLinks.length

      while count < elemLinks.length
        ch = Character.new
        ch.character_name = elemLinks[count].text
        ch.url = elemLinks[count]["href"]
        list << ch

        count += 1
      end
    list

    end
  end
end
