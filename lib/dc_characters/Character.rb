require 'pry'
module DCCharacters
  class Character

    attr_accessor :name, :url, :powers, :back_story, :alter_ego, :real_name, :occupation, :viewed
    @@characters = []

    def initialize(character)
      self.name = character.text
      self.url = character.attribute('href')
      @@characters << self
    end

    def self.make_collection_of_characters(character_array)
      # Iterate through each character in the array
      # Make a new instance for each character in the array
      # Each new instance will have a name and url
      # Return a array of new characters
        character_array.collect do |character|
          self.new(character)
        end

      end

      def self.characters
        @@characters
      end

      def add_attributes_to_characters

      end



    end

end
