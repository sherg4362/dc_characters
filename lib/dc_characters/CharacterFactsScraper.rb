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

    # SCRAPE SUPERMAN CHARACTER FACTS
    def self.superman(html, selection)
      # LEFT COLUMN
      left_column = html.css("div.left-col")
      # Right COLUMN
      right_column = html.css("div.right-col")
      # SUPERMAN BACK STORY
        back_story = <<-HTML
          #{html.css("div.field-item p")[2].text}
          #{html.css("div.field-item p")[3].text}
          #{html.css("div.field-item p")[4].text}
          #{html.css("div.field-item p")[5].text}
          HTML
        Character.characters[selection].back_story = back_story
        # SUPERMAN POWERS
          powers = <<-HTML
            #{left_column.css("div.views-field span")[0].text}
           #{left_column.css("div.field-content")[0].text}
           HTML
           Character.characters[selection].powers = powers
           # SUPERMAN ALTER EGO
           alter_ego = <<-HTML
             #{left_column.css("div.views-field span")[1].text}
             #{left_column.css("div.field-content")[1].text}
             HTML
             Character.characters[selection].alter_ego = alter_ego
          puts "Name:"
          puts Character.characters[selection].name
          puts "Backstory:"
          puts Character.characters[selection].back_story
          puts "Powers:"
          puts Character.characters[selection].powers
          puts "Alter-Ego:"
          puts Character.characters[selection].alter_ego
    end

    def self.batman(html, selection)
      # BATMAN BACK STORY
      back_story = <<-HTML
      #{html.css("div.field-item p")[6].text}
      #{html.css("div.field-item p")[7].text}
      #{html.css("div.field-item p")[8].text}
      HTML
      Character.characters[selection].back_story = back_story
      puts Character.characters[selection].back_story
    end

    def self.wonder_woman(html, selection)
      back_story = <<-HTML
      #{html.css("div.field-item p")[3].text}
      #{html.css("div.field-item p")[4].text}
      #{html.css("div.field-item p")[5].text}
      HTML
      Character.characters[selection].back_story = back_story
      puts Character.characters[selection].back_story
    end

    def self.green_lantern(html, selection)
      back_story = <<-HTML
      #{html.css("div.field-item p")[0].text}
      #{html.css("div.field-item p")[1].text}
      #{html.css("div.field-item p")[2].text}
      HTML
      Character.characters[selection].back_story = back_story
      puts Character.characters[selection].back_story
    end

    def self.flash(html, selection)
      back_story = <<-HTML
        #{html.css("div.field-item p")[3].text}
        #{html.css("div.field-item p")[4].text}
        #{html.css("div.field-item p")[5].text}
        #{html.css("div.field-item p")[6].text}
        HTML
      Character.characters[selection].back_story = back_story
      puts Character.characters[selection].back_story
    end

    def self.aquaman(html, selection)
      back_story = <<-HTML
      #{html.css("div.field-item p")[2].text}
      #{html.css("div.field-item p")[3].text}
      #{html.css("div.field-item p")[4].text}
      HTML
      Character.characters[selection].back_story = back_story
      puts Character.characters[selection].back_story
    end

    def self.cyborg(html, selection)
      back_story = <<-HTML
        #{html.css("div.field-item p")[2].text}
        #{html.css("div.field-item p")[3].text}
        #{html.css("div.field-item p")[4].text}
        #{html.css("div.field-item p")[5].text}
        HTML
      Character.characters[selection].back_story = back_story
      puts Character.characters[selection].back_story
    end

  end # End of Class

end # End of module
