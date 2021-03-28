class Card
    # attr_accessor :name, :text, :cost, :attack, :health, :img

    def initialize(card_data)
        @name = card_data["name"]
        @text = card_data["text"]
        @cost = card_data["cost"]
        @attack = card_data["attack"]
        @health = card_data["health"]
        @img = card_data["img"]
    end

    def get_name
        @name
    end


    def show
        puts @name.colorize(:light_blue)
        puts "-------------------------".colorize(:light_blue)
        puts @text
        puts "-------------------------".colorize(:light_blue)
        
        
        puts "Cost: #{@cost}".colorize(:blue) 
        puts "Attack: #{@attack}".colorize(:yellow)
        puts "Health: #{@health}".colorize(:red)
        puts "Image: #{@img}"
        puts "Note: Not all cards will have all attributes."
    end
end
