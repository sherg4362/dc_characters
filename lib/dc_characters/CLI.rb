module DCCharacters
  class CLI
    INDEX_OF_CHARACTERS_URL = "https://www.dccomics.com/characters"

    def run
      list_of_dc_characters = Scrapper.list_of_characters(INDEX_OF_CHARACTERS_URL)

      Character.make_collection_of_characters(list_of_dc_characters)
      list_whos_who_in_dc_universe(Character.characters)
      menu(Character.characters)
      exit_dc_characters

    end

    def menu(characters)
      input = nil
      while input != "exit"
        puts "Which DC Universe character would you like to learn more about.  Enter a number from 1 to 7, type list to see list of charaacters or type exit to leave"
        input = gets.strip.downcase

          if input.to_i > 0
            #call function and pass in selection
            puts "You selected #{input}"
          elsif input == "list"
          list_whos_who_in_dc_universe(characters)
          else
          puts "\n"
          puts "Please type 1 to 7, list or exit"
        end
      end
    end

    def list_whos_who_in_dc_universe(character_array)
      puts "======================"
        character_array.each.with_index(1) do |char, i|
          puts "#{i}. #{char.name}"
        end
      puts "======================"
      # puts <<-DOC.gsub /^\s*/, ''
      #     Who's who in the DC Universe
      #       1. Superman
      #       2. Batman
      #       3. Wonder Woman
      #       4. Green Lantern
      #       5. The Flash
      #       6. Aquaman
      #       7. Cyborg
      #     DOC
    end

    def exit_dc_characters
      puts "\n"
      puts "There is more to learn next time in Who's who in the DC Universe"
    end

  end  #Class end

end
