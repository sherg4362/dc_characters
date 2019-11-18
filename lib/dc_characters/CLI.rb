module DCCharacters
  class CLI

    def mainMenu
      selection = nil
      puts " "
      puts "======================  Loading ======================"
      puts " "
      who_is_who_menu_list
      puts " "
      puts "Which DC Universe character would you like to learn more about.  Enter a number from 1 to 7, type exit to leave"

      while selection != "exit" do
          selection = gets.strip
        case (selection)
          when "1"
            get_character_fact_sheet(selection)
          when "2"
            get_character_fact_sheet(selection)
          when "3"
            get_character_fact_sheet(selection)
          when "4"
            get_character_fact_sheet(selection)
          when "5"
            get_character_fact_sheet(selection)
          when "6"
            get_character_fact_sheet(selection)
          when "7"
            get_character_fact_sheet(selection)
          when "exit"
            puts "Goodbye"
          end

      end
    end

    def display_character_fact_sheet(obj)
      puts "Here is the information - #{obj.name} #{obj.back_story}"
    end

    def get_character_fact_sheet(selection)
      character_fact_sheet_name = Character.all[selection.to_i - 1].name.gsub(' ', '_').downcase
      character_fact_sheet = Scrapper.send(character_fact_sheet_name)
      display_character_fact_sheet(character_fact_sheet)
      #puts character_fact_sheet.back_story
    end

    def who_is_who_menu_list
      Character.all.each.with_index(1) do |character_obj, index|
        puts "#{index}. #{character_obj.name}"
      end
    end

    def run
      puts "Who is who in the DC character universe, let's find out"
      Scrapper.character_name_url
      mainMenu

    end

  end
end
