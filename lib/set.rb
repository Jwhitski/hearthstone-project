class Set
    def initialize(name, cards)
        @name = name #name of card sets
        @cards = [] #Array of card values / decks
        self.load_cards(cards)
    end

    def load_cards(card_data) 
        card_data.each do |card|#iterates through each nested array
            @cards.push(Card.new(card))
        end
    end

    def get_name
        @name
    end

    def list_cards
        @cards.each.with_index(1) do |card, index| #goes through each card instance and grabs names
            puts "#{index}. #{card.get_name}"
        end
    end

    def get_card(index)
        @cards[index - 1]
    end


end