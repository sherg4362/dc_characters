module DCCharacters
  class CLI

    def mainMenu
      selection = nil
      puts " "
      puts "======================  Loading ======================"
      puts " "
      who_is_who_list
      puts " "
      puts "Which DC Universe character would you like to learn more about.  Enter a number from 1 to 7, type exit to leave"

      while selection != "exit" do
        selection = gets.strip
        case (selection)
          when "1"
            build_character_facts(selection)
          when "2"
            build_character_facts(selection)
          when "3"
            build_character_facts(selection)
          when "4"
            build_character_facts(selection)
          when "5"
            build_character_facts(selection)
          when "6"
            build_character_facts(selection)
          when "7"
            build_character_facts(selection)
          when "exit"
            puts "Goodbye"
          end
      #Scrapper.character_page(Character.all[selection.to_i - 1].url)
      end

    end

    def build_character_facts(selection)
      # puts selection.to_i
      character_name_to_lookup = Character.all[selection.to_i - 1].name.gsub(' ', '_').downcase
      details = Scrapper.send(character_name_to_lookup)
      Character.all[selection.to_i - 1].details = details
      puts Character.all[selection.to_i - 1].details.powers
      #puts CharacterFacts.facts
      # Scrapper.character_page(Character.all[selection.to_i - 1].url)
    end

    def who_is_who_list
      Character.all.each_with_index do |character_obj, index|
        puts "#{index + 1}. #{character_obj.name}"
      end
    end

    def run
      puts "Who is who in the DC character universe, let's find out"
      Scrapper.character_name_url
      mainMenu
      #Scrapper.character_page(Character.all[1].url)




      #puts Character.all[1].name
      #puts Character.all[1].url
    end

  end
end
