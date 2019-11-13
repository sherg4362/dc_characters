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
      characterFacts = CharacterFacts.new
      characterFacts.powers = "lighting"
      characterFacts
      # characterInfo = ""
      # # SUPERMAN PAGE
      # doc = Nokogiri::HTML(open(@@baseUrl + "/characters/superman"))
      # # LEFT COLUMN
      # left_column = doc.css("div.left-col")
      # # Right COLUMN
      # right_column = doc.css("div.right-col")
      # # CHARACTER NAME\
      # characterInfo += "\n"
      # characterInfo += doc.css("h1.field-content").text + "\n"
      # # SUPERMAN BACK STORY
      # characterInfo += doc.css("div.field-item p")[2].text
      # characterInfo += "\n\n"
      # characterInfo += doc.css("div.field-item p")[3].text
      # characterInfo += "\n\n"
      # characterInfo += doc.css("div.field-item p")[4].text
      # characterInfo += "\n\n"
      # characterInfo += doc.css("div.field-item p")[5].text
      # characterInfo += "\n\n"
      # characterInfo += "Character Facts \n\n"
      # # SUPERMAN POWERS
      # characterInfo += left_column.css("div.views-field span")[0].text + "\n"
      # characterInfo += left_column.css("div.field-content")[0].text
      # # SUPERMAN ALTER EGO
      # characterInfo += "\n\n"
      # #characterInfo += @alter_ego
      # characterInfo += left_column.css("div.views-field span")[1].text + "\n"
      # characterInfo += left_column.css("div.field-content")[1].text
      # # SUPERMAN REAL NAME
      # characterInfo += "\n\n"
      # characterInfo += left_column.css("div.field-items")[2].text + ":\n"
      # characterInfo += left_column.css("div.field-item")[3].text
      # # SUPERMAN SUPER OCCUPATION
      # characterInfo += "\n\n"
      # characterInfo += right_column.css("div.field-items")[4].text + ":\n"
      # characterInfo += right_column.css("div.field-items")[5].text
      # characterInfo
    end

  end
end
