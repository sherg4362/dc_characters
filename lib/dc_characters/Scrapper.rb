module DCCharacters
  class Scrapper
    @@baseUrl = "https://www.dccomics.com/"

    def self.character_name_url
      characterName = ""
      url = ""
      doc = Nokogiri::HTML(open(@@baseUrl))
      links = doc.css("div.grid-title a")
      links.each do |link|
        Character.new(link.text, link['href'])

      end
    end

    # def self.character_page(url)
    #   puts url
    # end

    def self.superman
      character_facts = nil

      #puts "name: #{facts.name} and #{facts.url}"
      # create instance of new character
      # character = Character.new
      # SUPERMAN PAGE
      doc = Nokogiri::HTML(open(@@baseUrl + "characters/superman"))
      # LEFT COLUMN
      left_column = doc.css("div.left-col")
      # Right COLUMN
      right_column = doc.css("div.right-col")
      # CHARACTER NAME\
      character_facts = doc.css("h1.field-content").text + "\n\n"
      # SUPERMAN BACK STORY
      character_facts += back_story = "Back Story" + "\n\n"
      character_facts += doc.css("div.field-item p")[2].text + "\n\n"
      character_facts += doc.css("div.field-item p")[3].text + "\n\n"
      character_facts += doc.css("div.field-item p")[4].text + "\n\n"
      character_facts += doc.css("div.field-item p")[5].text + "\n\n"

      character_facts += "Character Facts \n\n"
      # SUPERMAN POWERS
      character_facts += left_column.css("div.views-field span")[0].text + "\n"
      character_facts += left_column.css("div.field-content")[0].text + "\n\n"
      # SUPERMAN ALTER EGO
      character_facts += left_column.css("div.views-field span")[1].text + "\n"
      character_facts += left_column.css("div.field-content")[1].text + "\n\n"
      # SUPERMAN REAL NAME
      character_facts += left_column.css("div.field-items")[2].text + ":\n"
      character_facts += left_column.css("div.field-item")[3].text + "\n\n"
      # SUPERMAN SUPER OCCUPATION
      character_facts += right_column.css("div.field-items")[4].text + ":\n"
      character_facts += right_column.css("div.field-items")[5].text
      character_facts

      character_fact_sheet = CharacterFacts.new
      character_fact_sheet.name = doc.css("h1.field-content").text

      character_fact_sheet.back_story = character_facts += back_story = "Back Story:" + "\n\n"
      character_fact_sheet.back_story += doc.css("div.field-item p")[2].text + "\n\n"

      #puts "* #{character_fact_sheet.back_story}"
      character_fact_sheet
    end

  end
end
