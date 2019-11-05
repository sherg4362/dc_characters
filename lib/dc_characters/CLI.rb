module DCCharacters
  class CLI
    @menuList = nil
    def who_is_who
      puts "Who is who in the DC character universe, let's find out"
    end

    def display_menu(menu)
      menu.each_with_index do |item, index|
        index += index + 1
        puts "\t#{index}.#{item.name}"
      end
    end

    def instructions
      selection = ""
      # while selection != "exit"
      #   puts "Which character would you like to learn more about.
      #   Enter a number from 1 to #{@menuList.length} or exit"
      #   selection = gets.strip
      #   case selection
      #   when "1"
      #     num = selection.to_i
      #     ##{@menuList[num - 1].name}
      #     get_Scrapper("superman")
      #   when "2"
      #     num = selection.to_i
      #     #puts "#{@menuList[num - 1].name}"
      #   when "3"
      #     num = selection.to_i
      #     puts "#{@menuList[num - 1].name}"
      #   when "4"
      #     num = selection.to_i
      #     puts "#{@menuList[num - 1].name}"
      #   when "5"
      #     num = selection.to_i
      #     puts "#{@menuList[num - 1].name}"
      #   when "6"
      #     num = selection.to_i
      #     puts "#{@menuList[num - 1].name}"
      #   when "7"
      #     num = selection.to_i
      #     puts "#{@menuList[num - 1].name}"
      #   when "exit"
      #     puts "Goodbye"
      #   else
      #     puts "Please enter a the correct repsonse"
      #   end
      #end

    end

    def get_Scrapper(url)
      puts Scrapper.send(url)
    end


    def run
      @menuList = Scrapper.character_name_url
      who_is_who
      display_menu(@menuList)
      instructions
      get_Scrapper("superman")
      #puts @menuList[0].name
      @menuList.select do |item|
        if item.name.downcase == "superman"
          item
        end
        item
      end
    end

  end
end
