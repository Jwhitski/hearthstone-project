class Set
    def initialize(name, cards)
        @name = name #name of card sets
        @cards = [] #Array of card instances / objects
        self.load_cards(cards)
    end

    def load_cards(card_data) 
        card_data.each do |card|#iterates through each nested array
            @cards.push(Card.new(card)) #Saves each instance of 'card' into @cards array
        end
    end

    def get_name
        @name
    end

    def list_cards #@chosen_set.list_cards -- takes the key called and lists cards for that key
        @cards.each.with_index(1) do |card, index| #goes through each card instance and grabs names
            puts "#{index}. #{card.get_name}"
            
        end
    end

    def get_card(index)
        while index <= 0 || index > @cards.length
            puts "That is not a valid selection, please try again."
            index = gets.to_i
        end
        @cards[index - 1]
        
    end


end