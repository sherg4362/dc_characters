module DCCharacters
  class Scrapper
    @baseUrl = "https://www.dccomics.com/"
    @character = "character/"

    def self.character_name_url
      menuList = []

      doc = Nokogiri::HTML(open("https://www.dccomics.com/"))
      menuLinks = doc.css("div.grid-title a")
      puts menuLinks
      menuLinks.each do |link|
        character = Character.new
        character.name = link.text
        menuList << character

      end

      menuList
    end

    # CHARACTER SUPERMAN
    def self.superman
      characterInfo = ""
      # SUPERMAN PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "/characters/superman"))
      # LEFT COLUMN
      left_column = doc.css("div.left-col")
      # Right COLUMN
      right_column = doc.css("div.right-col")
      # CHARACTER NAME\
      characterInfo += "\n"
      characterInfo += doc.css("h1.field-content").text + "\n"
      # SUPERMAN BACK STORY
      characterInfo += doc.css("div.field-item p")[2].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[3].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[4].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[5].text
      characterInfo += "\n\n"
      characterInfo += "Character Facts \n\n"
      # SUPERMAN POWERS
      characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      characterInfo += left_column.css("div.field-content")[0].text
      # SUPERMAN ALTER EGO
      characterInfo += "\n\n"
      #characterInfo += @alter_ego
      characterInfo += left_column.css("div.views-field span")[1].text + "\n"
      characterInfo += left_column.css("div.field-content")[1].text
      # SUPERMAN REAL NAME
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-items")[2].text + ":\n"
      characterInfo += left_column.css("div.field-item")[3].text
      # SUPERMAN SUPER OCCUPATION
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-items")[4].text + ":\n"
      characterInfo += right_column.css("div.field-items")[5].text
      characterInfo
    end

    # SCRAPED CHARACTER BATMAN
    def self.batman
      characterInfo = ""
      # BATMAN PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/batman"))
      # LEFT COLUMN
      left_column = doc.css("div.left-col")
      # Right COLUMN
      right_column = doc.css("div.right-col")

      # CHARACTER NAME\
      characterInfo += doc.css("h1.field-content").text + "\n"
      # BATMAN BACK STORY
      characterInfo += doc.css("div.field-item p")[6].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[7].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[8].text
      characterInfo += "\n\n"
      characterInfo += "Character Facts \n\n"
      # BATMAN POWERS
      characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      characterInfo += left_column.css("div.field-content")[0].text
      # BATMAN ALTER EGO
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[2].text + ": \n"
      characterInfo += left_column.css("div.field-item")[3].text
      # BATMAN REAL NAME
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-item")[2].text + ": \n"
      characterInfo += right_column.css("div.field-item")[3].text
      # BATMAN OCCUPATION
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[0].text + ": \n"
      characterInfo += left_column.css("div.field-item")[1].text
      characterInfo
    end

    # CHARACTER WONDER WOMAN
    def self.wonderwoman
      characterInfo = ""
      # WONDER WOMAN PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/wonder-woman"))
      # LEFT COLUMN
      left_column = doc.css("div.left-col")
      # Right COLUMN
      right_column = doc.css("div.right-col")
      # WONDER WOMAN BACK STORY
      characterInfo += doc.css("div.field-item p")[3].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[4].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[5].text
      characterInfo += "\n\n"
      characterInfo += "Character Facts \n\n"
      # WONDER WOMAN POWERS
      characterInfo += left_column.css("div.views-field span")[0].text
      characterInfo += left_column.css("div.field-content")[0].text
      # WONDER WOMAN ALTER EGO NONE
      # WONDER WOMAN REAL NAME
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[2].text + ": \n"
      characterInfo += left_column.css("div.field-item")[3].text
      # WONDER WOMAN OCCUPATION
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-items")[2].text + ":\n"
      characterInfo += right_column.css("div.field-items")[3].text
      characterInfo
    end

    # CHARACTER GREEN LANTERN
    def self.green_lantern
      characterInfo = ""
      # GREEN LANTERN PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/green-lantern"))
      # LEFT COLUMN
      left_column = doc.css("div.left-col")
      # Right COLUMN
      right_column = doc.css("div.right-col")
      # CHARACTER NAME\
      characterInfo += doc.css("h1.field-content").text + "\n"
      # GREEN LANTERN BACK STORY
      characterInfo += doc.css("div.field-item p")[0].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[1].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[2].text
      characterInfo += "\n\n"
      characterInfo += "Character Facts \n\n"
      # GREEN LANTERN POWERS
      characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      characterInfo += left_column.css("div.field-content")[0].text
      # GREEN LANTERN ALTER EGO NONE
      # GREEN LANTERN REAL NAME
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-item")[4].text + ": \n"
      characterInfo += right_column.css("div.field-item")[5].text
      # GREEN LANTERN OCCUPATION
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[2].text + ": \n"
      characterInfo += left_column.css("div.field-item")[3].text
      characterInfo
    end

    # CHARACTER THE FLASH
    def self.the_flash
      characterInfo = ""
      # THE FLASH PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/the-flash"))
      # LEFT COLUMN
      left_column = doc.css("div.left-col")
      # Right COLUMN
      right_column = doc.css("div.right-col")
      # CHARACTER NAME\
      characterInfo += doc.css("h1.field-content").text + "\n"
      # THE FLASH BACK STORY
      characterInfo += doc.css("div.field-item p")[3].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[4].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[5].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[6].text
      characterInfo += "\n\n"
      characterInfo += doc.css("h2.pane-title")[0].text.gsub(/^\s+|\s+$/,'')
      characterInfo += "\n\n"
      # THE FLASH POWERS
      characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      characterInfo += left_column.css("div.field-content")[0].text
      # THE FLASH ALTER EGO
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.views-field span")[1].text + "\n"
      characterInfo += left_column.css("div.field-content")[1].text
      # THE FLASH REAL NAME
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[2].text + ": \n"
      characterInfo += left_column.css("div.field-item")[3].text
      # THE FLASH OCCUPATION
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-item")[4].text + ": \n"
      characterInfo += right_column.css("div.field-item")[5].text
      puts characterInfo
    end

    # CHARACTER AQUAMAN
    def self.aquaman
      characterInfo = ""
      # AQUAMAN PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/AQUAMAN"))
      # LEFT COLUMN
      left_column = doc.css("div.left-col")
      # Right COLUMN
      right_column = doc.css("div.right-col")
      # CHARACTER NAME\
      characterInfo += doc.css("h1.field-content").text + "\n"
      # AQUAMAN BACK STORY
      characterInfo += doc.css("div.field-item p")[2].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[3].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[4].text
      characterInfo += "\n\n"
      characterInfo += doc.css("h2.pane-title")[0].text.gsub(/^\s+|\s+$/,'')
      characterInfo += "\n\n"
      # AQUAMAN POWERS
      characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      characterInfo += left_column.css("div.field-content")[0].text
      # AQUAMAN ALTER EGO NONE
      # AQUAMAN REAL NAME
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-item")[2].text + ": \n"
      characterInfo += right_column.css("div.field-item")[3].text
      # AQUAMAN OCCUPATION
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[0].text + ": \n"
      characterInfo += left_column.css("div.field-item")[1].text
      puts characterInfo
    end

    # CHARACTER CYBORG
    def self.cyborg
      characterInfo = ""
      # CYBORG PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/cyborg"))
      # LEFT COLUMN
      left_column = doc.css("div.left-col")
      # Right COLUMN
      right_column = doc.css("div.right-col")
      # CHARACTER NAME\
      characterInfo += doc.css("h1.field-content").text + "\n"
      # CYBORG BACK STORY
      characterInfo += doc.css("div.field-item p")[2].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[3].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[4].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[5].text
      characterInfo += "\n\n"
      characterInfo += doc.css("h2.pane-title")[0].text.gsub(/^\s+|\s+$/,'')
      characterInfo += "\n\n"
      # CYBORG POWERS
      characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      characterInfo += left_column.css("div.field-content")[0].text
      # CYBORG ALTER EGO NONE
      # CYBORG REAL NAME
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-item")[4].text + ": \n"
      characterInfo += right_column.css("div.field-item")[5].text
      # CYBORG OCCUPATION
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[2].text + ": \n"
      characterInfo += left_column.css("div.field-item")[3].text
      puts characterInfo
    end

  end
end
