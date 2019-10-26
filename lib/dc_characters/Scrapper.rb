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

    # SCRAPED CHARACTER SUPERMAN
    def self.superman
      characterInfo = ""
      # SCRAPE PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/superman"))
      # SCRAPE LEFT COLUMN
      left_column = doc.css("div.left-col")
      #SCRAPE Right COLUMN
      right_column = doc.css("div.right-col")
      # SCRAPE BACK STORY
      characterInfo += doc.css("div.field-item p")[2].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[3].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[4].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[5].text
      characterInfo += "\n\n"
      characterInfo += "Character Facts \n\n"
      # SCRAPE SUPER POWERS
      characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      characterInfo += left_column.css("div.field-content")[0].text
      # SCRAPE ALTER EGO
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.views-field span")[1].text + "\n"
      characterInfo += left_column.css("div.field-content")[1].text
      # SCRAPE REAL NAME
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-items")[2].text + ":\n"
      characterInfo += left_column.css("div.field-item")[3].text
      # SCRAPE SUPER OCCUPATION
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-items")[4].text + ":\n"
      characterInfo += right_column.css("div.field-items")[5].text
      characterInfo
    end

    # SCRAPED CHARACTER BATMAN
    def self.batman
      characterInfo = ""
      # SCRAPE PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/batman"))
      # SCRAPE LEFT COLUMN
      left_column = doc.css("div.left-col")
      # SCRAPE Right COLUMN
      right_column = doc.css("div.right-col")
      # SCRAPE BACK STORY
      characterInfo += doc.css("div.field-item p")[6].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[7].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[8].text
      characterInfo += "\n\n"
      characterInfo += "Character Facts \n\n"
      # SCRAPE POWERS
      characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      characterInfo += left_column.css("div.field-content")[0].text
      # SCRAPE ALTER EGO
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[2].text + ": \n"
      characterInfo += left_column.css("div.field-item")[3].text
      # SCRAPE REAL NAME
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-item")[2].text + ": \n"
      characterInfo += right_column.css("div.field-item")[3].text
      # SCRAPE OCCUPATION
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[0].text + ": \n"
      characterInfo += left_column.css("div.field-item")[1].text
      characterInfo
    end

    # SCRAPED CHARACTER WONDER WOMAN
    def self.wonder_woman
      characterInfo = ""
      # SCRAPE PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/wonder-woman"))
      # SCRAPE LEFT COLUMN
      left_column = doc.css("div.left-col")
      # SCRAPE Right COLUMN
      right_column = doc.css("div.right-col")
      # SCRAPE BACK STORY
      characterInfo += doc.css("div.field-item p")[3].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[4].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[5].text
      characterInfo += "\n\n"
      characterInfo += "Character Facts \n\n"
      # SCRAPE POWERS
      characterInfo += left_column.css("div.views-field span")[0].text
      characterInfo += left_column.css("div.field-content")[0].text
      # SCRAPE ALTER EGO NONE
      # SCRAPE REAL NAME
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[2].text + ": \n"
      characterInfo += left_column.css("div.field-item")[3].text
      # SCRAPE SUPER OCCUPATION
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-items")[2].text + ":\n"
      characterInfo += right_column.css("div.field-items")[3].text
      characterInfo
    end

    # SCRAPED CHARACTER GREEN LANTERN
    def self.green_lantern
      characterInfo = ""
      # SCRAPE PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/green-lantern"))
      # SCRAPE LEFT COLUMN
      left_column = doc.css("div.left-col")
      # SCRAPE Right COLUMN
      right_column = doc.css("div.right-col")
      # SCRAPE BACK STORY
      characterInfo += doc.css("div.field-item p")[0].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[1].text
      characterInfo += "\n\n"
      characterInfo += doc.css("div.field-item p")[2].text
      characterInfo += "\n\n"
      characterInfo += "Character Facts \n\n"
      # SCRAPE POWERS
      characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      characterInfo += left_column.css("div.field-content")[0].text
      # SCRAPE ALTER EGO NONE
      # SCRAPE REAL NAME
      characterInfo += "\n\n"
      characterInfo += right_column.css("div.field-item")[4].text + ": \n"
      characterInfo += right_column.css("div.field-item")[5].text
      # SCRAPE OCCUPATION
      characterInfo += "\n\n"
      characterInfo += left_column.css("div.field-item")[2].text + ": \n"
      characterInfo += left_column.css("div.field-item")[3].text
      characterInfo
    end

    # SCRAPED CHARACTER THE FLASH
    def self.the_flash
      characterInfo = ""
      # SCRAPE PAGE
      doc = Nokogiri::HTML(open(@baseUrl + "characters/the-flash"))
      # puts doc.to_html
      puts doc.search("div.field-item p")

      # # SCRAPE LEFT COLUMN
      # left_column = doc.css("div.left-col")
      # # SCRAPE Right COLUMN
      # right_column = doc.css("div.right-col")
      # # SCRAPE BACK STORY
      # characterInfo += doc.css("div.field-item p")[3].text
      # characterInfo += "\n\n"
      # characterInfo += doc.css("div.field-item p")[4].text
      # characterInfo += "\n\n"
      # characterInfo += doc.css("div.field-item p")[5].text
      # characterInfo += "\n\n"
      # characterInfo += "Character Facts \n\n"
      # # SCRAPE POWERS
      # characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      # characterInfo += left_column.css("div.field-content")[0].text
      # # SCRAPE ALTER EGO
      # characterInfo += "\n\n"
      # characterInfo += left_column.css("div.views-field span")[1].text + "\n"
      # characterInfo += left_column.css("div.field-content")[1].text
      # # SCRAPE REAL NAME
      # characterInfo += "\n\n"
      # characterInfo += left_column.css("div.field-item")[2].text + ": \n"
      # characterInfo += left_column.css("div.field-item")[3].text
      # # SCRAPE OCCUPATION
      # characterInfo += "\n\n"
      # characterInfo += right_column.css("div.field-item")[4].text + ": \n"
      # characterInfo += right_column.css("div.field-item")[5].text
      # characterInfo

    end

  end
end
