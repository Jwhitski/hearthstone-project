class CLI
    # interacts with user and connects our files together
    # all statements.

    def run 
        puts "Greetings, Traveler! Welcome to the Hearthstone info booth!"
        API.run
        self.menu
    end

    def menu
        puts "Which card set would you like to explore?"
        puts "(Type the number corresponding to the set you would like to view)."
        self.card_set_list
        self.pick_set
        
    end

    def pick_set
        index = gets.to_i.pred
        list_size = CardSet.all.length.pred
        while index.negative? || index > list_size
            puts "Woah! You're in uncharted waters, please select one of our current sets!"
            index = gets.to_i.pred
        end
        current_card_set = CardSet.all[index]
    end

    def card_set_list
        CardSet.all.each.with_index(1) do |card_set, index|
        # binding.pry
        puts "#{index}. #{card_set.name}"
        end  
    end



end