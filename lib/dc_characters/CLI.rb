module DCCharacters
  class CLI
      whos_who_list = []
    def ask(question)
      puts question
      gets.chomp
    end

    def selected(selection)
      puts "You selected number:  #{whos_who_list[selection]}"
    end


    def run
        puts "Who's who in the DC comic universe \n \n"
        scrapper = Scrapper.new
        whos_who_list = scrapper.character_list
        puts whos_who_list
        puts "\n"
        selected(ask("Which character would you like to learn more about (enter '1'-'7' or 'exit')"))

        character = Character.new
        puts character
    end
  end
end
