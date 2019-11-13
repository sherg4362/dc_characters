module DCCharacters
  class Character
    @@allCharacters = []
    
    attr_accessor :name, :url, :details

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
