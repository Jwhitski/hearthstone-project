class CLI
    # interacts with user and connects our files together
    # all statements.

    def run 
        puts "Greetings, Traveler! Welcome to the Hearthstone info booth!"
        API.run
        self.menu_set
    end

    def menu_set
        puts "Which card set would you like to explore?"
        puts "(Type the number corresponding to the set you would like to view)."
        self.card_set_list
        self.pick_set
        
    end

    def pick_set
        index = gets.to_i - 1
        list_size = CardSet.all.length - 1
        while index.negative? || index > list_size
            puts "Woah! You're in uncharted waters, please select one of our current sets!"
            index = gets.to_i - 1
        end
        current_card_set = CardSet.all[index] #returns instance of cardset

        self.card_set_details(current_card_set)
    end
    
    def card_set_details(selected_set)
        [selected_set.name][0...100]
        binding.pry
    end

    def card_set_list
        CardSet.all.each.with_index(1) do |card_set, index|
        # binding.pry
        puts "#{index}. #{card_set.name}"
        end  
    end


    # def menu_cards

    # end

    # def pick_card
    #     index = gets.to_i - 1
    #     list_size = Cards.all.length - 1
    #     while index.negative? || index > list_size
    #         puts "Woah! You're in uncharted waters, please select one of our current sets!"
    #         index = gets.to_i - 1
    #     end

    # end

end

#if key is selected "Madness At The Darkmoon Faire", we want it to display the values...aka the cards in that set. 

#how do you select a value of a key? you type [key][value]?

#the key is a string.. we need to make that string a key

#we need our program to iterate over all the options, and match it with the input from our user... then put that input in as the key and getting the values..

