module DCCharacters
  class Character
    @@allCharacters = []

    attr_accessor :name, :url, :powers, :back_story, :alter_ego, :real_name, :occupation

    def initialize(name, url)
        @name = name
        @url = url

        @@allCharacters << self
    end

    def self.all
        @@allCharacters
    end

  end
end
