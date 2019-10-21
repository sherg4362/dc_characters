module DCCharacters
  class CLI



    # def ask(question)
    #   puts question
    #   gets.chomp
    # end
    #
    # def selected(selection)
    #   if selection ==
    #   puts "You selected number:  #{selection}"
    # end

    def display
      puts "Who's who in the DC comic universe,\n \nSelect from the list of Heroes to learn more \n \n"
    end


    def run
      list = Scrapper.character_name_url
      puts list.last.url

      display


      end
      #CharacterDetails.details

        #
        #
        # scrapper = Scrapper.new
        # whos_who_list = scrapper.character_list
        # puts whos_who_list
        # puts "\n"
        # selected(ask("Which character would you like to learn more about (enter '1'-'7' or 'exit')"))
        #
        # character = Character.new
        # puts character
    #end
  end
end
