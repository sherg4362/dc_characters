module DCCharacters
  BASEURL = "https://www.dccomics.com/"

  class CharacterFactsScraper

    def self.get_character_page(selection)
      character_name = Character.characters[selection].name
      character_page_url = Character.characters[selection].url
      # BASEURL + character_page_url
      html = Nokogiri::HTML(open(BASEURL + character_page_url))
      #puts "This is hero name: #{character_name}"
      if character_name == "Superman"
        superman(html, selection)
      elsif character_name == "Batman"
        batman(html, selection)
      elsif character_name == "Wonder Woman"
        wonder_woman(html, selection)
      elsif character_name == "Green Lantern"
        green_lantern(html, selection)
      elsif character_name == "The Flash"
        flash(html, selection)
      elsif character_name == "Aquaman"
        aquaman(html, selection)
      elsif character_name == "Cyborg"
        cyborg(html, selection)
      end
    end

    def self.display_character_facts(selection)
      character_attributes = { attribute: ["Back Story:", "Powers:", "Alias/AKA:", "Real Name:", "Occupation:"]}
      puts ""
      puts Character.characters[selection].name.colorize(:cyan)
      puts ""
      puts character_attributes[:attribute][0].colorize(:cyan)
      puts Character.characters[selection].back_story
      puts ""
      puts character_attributes[:attribute][1].colorize(:cyan)
      puts Character.characters[selection].powers
      puts ""
      puts character_attributes[:attribute][2].colorize(:cyan)
      puts Character.characters[selection].alter_ego
      puts ""
      puts character_attributes[:attribute][3].colorize(:cyan)
      puts Character.characters[selection].real_name
      puts ""
      puts character_attributes[:attribute][4].colorize(:cyan)
      puts Character.characters[selection].occupation
      puts ""
    end
    # GET lEFT COLUMN OF CHARACTER PAGE
    def self.left_column(html)
      # LEFT COLUMN
      left_column = html.css("div.left-col")
      left_column
    end
    # GET RIGHT COLUMN OF CHARACTER PAGE
    def self.right_column(html)
      # Right COLUMN
      right_column = html.css("div.right-col")
      right_column
    end

    # def self.get_viewed(selection)
    #   Character.characters[selection].viewed = true
    #   puts Character.characters[selection].viewed
    # end

    # SCRAPE SUPERMAN CHARACTER FACTS
    def self.superman(html, selection)
      get_viewed(selection)
      # LEFT COLUMN
      left_column = left_column(html)
      # Right COLUMN
      right_column = right_column(html)
      # SUPERMAN BACK STORY
        back_story = <<~HTML
            #{html.css("div.field-item p")[2].text}
            #{html.css("div.field-item p")[3].text}
            #{html.css("div.field-item p")[4].text}
            #{html.css("div.field-item p")[5].text}
          HTML
        # SUPERMAN POWERS
          powers = left_column.css("div.field-content")[0].text
           # SUPERMAN ALTER EGO
           alter_ego = left_column.css("div.field-content")[1].text
            # SUPERMAN REAL NAME
            real_name = left_column.css("div.field-item")[3].text
             # SUPERMAN SUPER OCCUPATION
             occupation = right_column.css("div.field-items")[5].text
            # SET ATTRIBUTES
             Character.characters[selection].back_story = back_story
             Character.characters[selection].powers = powers
             Character.characters[selection].alter_ego = alter_ego
             Character.characters[selection].real_name = real_name
             Character.characters[selection].occupation = occupation

          display_character_facts(selection)
    end # END OF SUPERMAN METHOD

    # SCRAPE BATMAN CHARACTER FACTS
    def self.batman(html, selection)
      # LEFT COLUMN
      left_column = left_column(html)
      # Right COLUMN
      right_column = right_column(html)
      # BATMAN BACK STORY
      back_story = <<~HTML
      #{html.css("div.field-item p")[6].text}
      #{html.css("div.field-item p")[7].text}
      #{html.css("div.field-item p")[8].text}
      HTML
      # BATMAN POWERS
      powers = left_column.css("div.field-content")[0].text
      # BATMAN ALTER EGO
      alter_ego = left_column.css("div.field-item")[3].text
      # BATMAN REAL NAME
      real_name = right_column.css("div.field-item")[3].text
      # BATMAN OCCUPATION
      occupation = left_column.css("div.field-items")[1].text
      # SET ATTRIBUTES
      Character.characters[selection].back_story = back_story
      Character.characters[selection].powers = powers
      Character.characters[selection].alter_ego = alter_ego
      Character.characters[selection].real_name = real_name
      Character.characters[selection].occupation = occupation
      # DISPLAY CHARACTER FACTS
      display_character_facts(selection)
    end # END OF BATMAN METHOD

    # SCRAPE WONDER WOMAN CHARACTER FACTS
    def self.wonder_woman(html, selection)
      # LEFT COLUMN
      left_column = left_column(html)
      # Right COLUMN
      right_column = right_column(html)
      back_story = <<-HTML
      #{html.css("div.field-item p")[3].text}
      #{html.css("div.field-item p")[4].text}
      #{html.css("div.field-item p")[5].text}
      HTML
      # WONDER WOMAN POWERS
      powers = left_column.css("div.field-content")[0].text
      # WONDER WOMAN ALTER EGO NONE
      alter_ego = ""
      # WONDER WOMAN REAL NAME
      real_name = left_column.css("div.field-item")[3].text
      # WONDER WOMAN OCCUPATION
      occupation = right_column.css("div.field-items")[3].text
      # SET ATTRIBUTES
      Character.characters[selection].back_story = back_story
      Character.characters[selection].powers = powers
      Character.characters[selection].alter_ego = alter_ego
      Character.characters[selection].real_name = real_name
      Character.characters[selection].occupation = occupation
      # DISPLAY CHARACTER FACTS
      display_character_facts(selection)
    end # END OF WONDER WOMAN METHOD

    # SCRAPE GREEN LANTERN CHARACTER FACTS
    def self.green_lantern(html, selection)
      # LEFT COLUMN
      left_column = left_column(html)
      # Right COLUMN
      right_column = right_column(html)
      # GREEN LANTERN BACK STORY
      back_story = <<-HTML
      #{html.css("div.field-item p")[0].text}
      #{html.css("div.field-item p")[1].text}
      #{html.css("div.field-item p")[2].text}
      HTML
      # GREEN LANTERN POWERS
      powers = left_column.css("div.field-content")[0].text
      # GREEN LANTERN ALTER EGO NONE
      alter_ego = ""
      # GREEN LANTERN REAL NAME
      real_name = right_column.css("div.field-item")[5].text
      #GREEN LANTERN OCCUPATION
      occupation = left_column.css("div.field-item")[3].text
      # SET ATTRIBUTES
      Character.characters[selection].back_story = back_story
      Character.characters[selection].powers = powers
      Character.characters[selection].alter_ego = alter_ego
      Character.characters[selection].real_name = real_name
      Character.characters[selection].occupation = occupation
      # DISPLAY CHARACTER FACTS
      display_character_facts(selection)
    end # END OF GREEN LANTERN METHOD

    # SCRAPE THE FLASH CHARACTER FACTS
    def self.flash(html, selection)
      # LEFT COLUMN
      left_column = left_column(html)
      # Right COLUMN
      right_column = right_column(html)
      back_story = <<~HTML
        #{html.css("div.field-item p")[3].text}
        #{html.css("div.field-item p")[4].text}
        #{html.css("div.field-item p")[5].text}
        #{html.css("div.field-item p")[6].text}
        HTML
        # THE FLASH POWERS
        powers = left_column.css("div.field-content")[0].text
        # THE FLASH ALTER EGO
        alter_ego = left_column.css("div.field-content")[1].text
        # THE FLASH REAL NAME
        real_name = left_column.css("div.field-item")[3].text
        # THE FLASH OCCUPATION
        occupation = right_column.css("div.field-items")[5].text
        # SET ATTRIBUTES
        Character.characters[selection].back_story = back_story
        Character.characters[selection].powers = powers
        Character.characters[selection].alter_ego = alter_ego
        Character.characters[selection].real_name = real_name
        Character.characters[selection].occupation = occupation
        # DISPLAY CHARACTER FACTS
        display_character_facts(selection)
      end # END OF THE FLASH METHOD
    # SCRAPE AQUAMAN CHARACTER FACTS
    def self.aquaman(html, selection)
      # LEFT COLUMN
      left_column = left_column(html)
      # Right COLUMN
      right_column = right_column(html)
      # AQUAMAN BACK STORY
      back_story = <<-HTML
      #{html.css("div.field-item p")[2].text}
      #{html.css("div.field-item p")[3].text}
      HTML
      # AQUAMAN POWERS
      powers = left_column.css("div.field-content")[0].text
      # AQUAMAN ALTER EGO
      alter_ego = ""
      # AQUAMAN REAL NAME
      real_name = right_column.css("div.field-item")[3].text
      # AQUAMAN OCCUPATION
      occupation = left_column.css("div.field-item")[1].text
      # SET ATTRIBUTES
      Character.characters[selection].back_story = back_story
      Character.characters[selection].powers = powers
      Character.characters[selection].alter_ego = alter_ego
      Character.characters[selection].real_name = real_name
      Character.characters[selection].occupation = occupation
      # DISPLAY CHARACTER FACTS
      display_character_facts(selection)
    end # END AQUAMAN METHOD

    # SCRAPE CYBORG CHARACTER FACTS
    def self.cyborg(html, selection)
      # LEFT COLUMN
      left_column = left_column(html)
      # Right COLUMN
      right_column = right_column(html)
      # CYBORG BACK STORY
      back_story = <<-HTML
        #{html.css("div.field-item p")[2].text}
        #{html.css("div.field-item p")[3].text}
        #{html.css("div.field-item p")[4].text}
        #{html.css("div.field-item p")[5].text}
        HTML
        # CYBORG POWERS
        powers = left_column.css("div.field-content")[0].text
        # CYBORG ALTER EGO
        alter_ego = ""
        # CYBORG REAL NAME
        real_name = right_column.css("div.field-item")[5].text
        # CYBORG OCCUPATION
        occupation = right_column.css("div.field-items")[3].text
        # SET ATTRIBUTES
        Character.characters[selection].back_story = back_story
        Character.characters[selection].powers = powers
        Character.characters[selection].alter_ego = alter_ego
        Character.characters[selection].real_name = real_name
        Character.characters[selection].occupation = occupation
        # DISPLAY CHARACTER FACTS
        display_character_facts(selection)
    end # END CYBORG METHOD

  end # End of Class

end # End of module
