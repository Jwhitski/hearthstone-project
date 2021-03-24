class Cards
    attr_accessor :name, :text, :cost, :attack, :health, :img  
    @@all = []
    
    def initialize(name:, text:)
        @name = name
        @text = text
        @@all << self
    end

    def self.all
        @@all
    end
end