module DCCharacters
  class Scrapper

    def character_list(url)

      def initialize(url)
        @characterUrl = url
      end
      #puts ['Hello', 'World!']
      doc = Nokogiri::HTML(open("https://www.dccomics.com/"))
      links = doc.css("div.grid-title a")
      len = links.length

      characters = []
      links.each.with_index(1) do
           |character, i| characters << "#{i}" + ". " + character.text
        end
      #character_1 = links[0].text
      #puts character_1
      characters
    end
  end
end
