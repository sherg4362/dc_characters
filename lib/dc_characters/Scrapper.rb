module DCCharacters
  class Scrapper
    @@baseUrl = "https://www.dccomics.com/"

    def self.baseUrl
      @@baseUrl
    end

    def self.character_name
      doc = Nokogiri::HTML(open(@@baseUrl))
      links = doc.css("div.grid-title a")
      links.each do |link|
        Character.new(link.text, link['href'])
      end
    end



    # def self.get_character_facts(character_selection)
    #   character_selection
    # end

    def self.superman
      # SUPERMAN PAGE
        doc = Nokogiri::HTML(open(@@baseUrl + "characters/superman"))
        # LEFT COLUMN
        left_column = doc.css("div.left-col")
        # Right COLUMN
        right_column = doc.css("div.right-col")
        # CHARACTER NAME\
        character_fact_sheet = doc.css("h1.field-content").text + "\n\n"

        # SUPERMAN BACK STORY
          character_fact_sheet += back_story = "Back Story:" + "\n\n"
          character_fact_sheet += doc.css("div.field-item p")[2].text + "\n\n"
          character_fact_sheet += doc.css("div.field-item p")[3].text + "\n\n"
          character_fact_sheet += doc.css("div.field-item p")[4].text + "\n\n"
          character_fact_sheet += doc.css("div.field-item p")[5].text + "\n\n"
        # SUPERMAN Facts
          character_fact_sheet += "Character Facts \n\n"
       # SUPERMAN POWERS
          character_fact_sheet += left_column.css("div.views-field span")[0].text + "\n"
          character_fact_sheet += left_column.css("div.field-content")[0].text + "\n\n"
        # SUPERMAN ALTER EGO
          character_fact_sheet += left_column.css("div.views-field span")[1].text + "\n"
          character_fact_sheet += left_column.css("div.field-content")[1].text + "\n\n"
        # SUPERMAN REAL NAME
          character_fact_sheet += left_column.css("div.field-items")[2].text + ":\n"
          character_fact_sheet += left_column.css("div.field-item")[3].text + "\n\n"
        # SUPERMAN SUPER OCCUPATION
          character_fact_sheet += right_column.css("div.field-items")[4].text + ":\n"
          character_fact_sheet += right_column.css("div.field-items")[5].text

        character_fact_sheet
    end

    def self.batman
      "I Love Batman"
    end

    def self.wonder_woman
      "I Love Wonder Woman"
    end

    def self.green_lantern
      "I Love Green Lantern"
    end

    def self.the_flash
      "I Love The Flash"
    end

    def self.aquaman
      puts "I Love Aquaman"
    end

    def self.cyborg
      puts "I Love Cyborg"
    end

    # def self.superman
    #   #puts selection.to_i.class
    #   character_facts = nil
    #   # SUPERMAN PAGE
    #   doc = Nokogiri::HTML(open(@@baseUrl + "characters/superman"))
    #   # LEFT COLUMN
    #   left_column = doc.css("div.left-col")
    #   # Right COLUMN
    #   right_column = doc.css("div.right-col")
    #   # CHARACTER NAME\
    #   character_fact_sheet = doc.css("h1.field-content").text
    #   character_fact_sheet += "\n\n"
    #   # SUPERMAN BACK STORY
    #   character_fact_sheet += back_story = "Back Story:" + "\n\n"
    #   character_fact_sheet += doc.css("div.field-item p")[2].text + "\n\n"
    #   character_fact_sheet += doc.css("div.field-item p")[3].text + "\n\n"
    #   character_fact_sheet += doc.css("div.field-item p")[4].text + "\n\n"
    #   character_fact_sheet += doc.css("div.field-item p")[5].text + "\n\n"
    #
    #   # character_fact_sheet += "Character Facts \n\n"
    #   # SUPERMAN POWERS
    #   # character_facts += left_column.css("div.views-field span")[0].text + "\n"
    #   # character_facts += left_column.css("div.field-content")[0].text + "\n\n"
    #   # SUPERMAN ALTER EGO
    #   # character_facts += left_column.css("div.views-field span")[1].text + "\n"
    #   # character_facts += left_column.css("div.field-content")[1].text + "\n\n"
    #   # SUPERMAN REAL NAME
    #   # character_facts += left_column.css("div.field-items")[2].text + ":\n"
    #   # character_facts += left_column.css("div.field-item")[3].text + "\n\n"
    #   # SUPERMAN SUPER OCCUPATION
    #   # character_facts += right_column.css("div.field-items")[4].text + ":\n"
    #   # character_facts += right_column.css("div.field-items")[5].text
    #   # character_facts
    #
    #   character_fact_sheet = CharacterFacts.new
    #   character_fact_sheet.name = "\n\n" + "Name:" + "\n"
    #   character_fact_sheet.name += doc.css("h1.field-content").text
    #
    #   character_fact_sheet.back_story = "\n\n" + "Back Story:" + "\n"
    #   character_fact_sheet.back_story += doc.css("div.field-item p")[2].text + "\n\n"
    #   character_fact_sheet.back_story += doc.css("div.field-item p")[3].text + "\n\n"
    #   character_fact_sheet.back_story += doc.css("div.field-item p")[4].text + "\n\n"
    #   character_fact_sheet.back_story += doc.css("div.field-item p")[5].text
    #
    #   # character_fact_sheet.powers = "\n\n" + "Character Facts:" + "\n"
    #   # SUPERMAN POWERS
    #   character_fact_sheet.powers = "\n\n" + "Powers:" + "\n"
    #   character_fact_sheet.powers += left_column.css("div.field-content")[0].text
    #   # SUPERMAN ALTER EGO
    #   character_fact_sheet.alias = "\n\n" + "Alias/Alter Ego:" + "\n"
    #   character_fact_sheet.alias += left_column.css("div.field-content")[1].text
    #   # REAL NAME
    #   character_fact_sheet.real_name = "\n\n" + "Real Name:" + "\n"
    #   character_fact_sheet.real_name += left_column.css("div.field-item")[3].text
    #   # OCCUPATION
    #   character_fact_sheet.occupation =  "\n\n" + "Occupation:" + "\n"
    #   character_fact_sheet.occupation += right_column.css("div.field-items")[5].text
    #
    #   character_fact_sheet
    # end

  end
end
