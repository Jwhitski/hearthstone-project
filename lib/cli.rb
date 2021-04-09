class CLI
    # interacts with user and connects our files together
    # all statements.

    def run 
        puts "Greetings, Traveler! Welcome to the Hearthstone info booth!"
        @sets = Array.new
        api_data = API.run
        api_data.each do |set, card_data| #iterates over key to get each value
            @sets.push(Set.new(set, card_data)) #instantiates set and card classes / saves in @sets
            
        end
        self.menu_set
    end

    def menu_set
        puts "Which card set would you like to explore?"
        self.card_set_list
        
    end

    def card_set_list #displays the sets... indexed 1-34
        @sets.each.with_index(1) do |set, index| #stores each instance of sets
            puts "#{index}. #{set.get_name}" #calls Set.get_name
        end

        puts "Type the number corresponding to the set you would like to view:"
        set_input = gets.to_i #user selects their card... if user selects 1.
        while set_input <= 0 || set_input > @sets.length
            puts "That is not a valid selection, please try again."
            set_input = gets.to_i
        end
    
        puts "Here are the cards for that set"
        @chosen_set = @sets[set_input - 1] #stores selection
        @chosen_set.list_cards #Set.list_cards / stores @sets[index].list_cards 
        #chooses the key to retrieve values (cards)
        
        
        self.menu_card
        
    end

    def menu_card
        puts "Which card would you like to see from #{@chosen_set.get_name}?"
        card_input = gets.to_i
        @chosen_card = @chosen_set.get_card(card_input) #Set.get_card
        @chosen_card.show #Card.show
        self.choose_again
    end

    def choose_again
        puts "Would you like to choose again? Enter 'yes' to restart program, or any other key to exit."
        input = gets.strip.downcase
        if input == "yes"
            self.menu_set
        else
            puts 'Thank you for using the Hearthstone CLI.'
        end
    end

    
end
