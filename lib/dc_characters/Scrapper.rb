module DCCharacters
  class Scrapper
    @baseUrl = "https://www.dccomics.com/"

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


    # def Flash
    #   doc = Nokogiri::HTML(open(@baseUrl + "characters/the-flash"))
    #   characterFacts = doc.css("div.left-col")[0]
    #   powers = characterFacts.css("div.field-content")[0].text
    # end


    def self.characterInfo
      doc = Nokogiri::HTML(open(@baseUrl + "characters/superman"))
      # grab powers facts

      #powers = characterFacts.css("div.field-content")[0].text

      occupation = characterFacts = doc.css("div.right-col")
      occupation = occupation.css("div.field-item").last.text
      #characterFacts = characterFacts.css("p")[4]
      #first_paragraph = characterFacts.css("p")[4].text
      #second_pargraph = characterFacts.css("p")[5].text
      #third_paragraph = characterFacts.css("p")[6].text
      #fourth_paragraph
      #puts characterFacts.length - 2
      #index = characterFacts.length - 2
      #powers = characterFacts[index]
      #occupation =
      #alias =
      #real_name =
      #back_story =
      puts occupation

    end


  end
end
