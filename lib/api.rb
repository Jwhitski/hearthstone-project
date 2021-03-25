class API
    
    def self.run
        # url = "https://omgvamp-hearthstone-v1.p.rapidapi.com/?rapidapi-key=#{api_key}/cards"
        # uri = URI(url)
        url = URI("https://omgvamp-hearthstone-v1.p.rapidapi.com/cards")

        # response = Net::HTTP.get(uri) #'gets' info from a we@setsite.
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-key"] = ENV["HEARTHSTONE_KEY"]
        request["x-rapidapi-host"] = 'omgvamp-hearthstone-v1.p.rapidapi.com'

        response = http.request(request)
        # puts response.read_body
        @sets = JSON.parse(response.read_body) #turns string into JSON. "hash" {...} hash with the key of basic. which points to 3 arrays for value.
        binding.pry
    end

    def get_sets
        @sets.keys # returns the sets. ["Basic", "Classic", etc...]
    end


    def self.get_decks #grabs the array of cards / this should keep track of cards
        @all_cards = [] #stores all cards / decks...
        @sets.each do |key, deck|
            if deck.kind_of?(Array) # Makes sure it is an array we are getting before iterating
                deck.each do |card| # Iterate over the deck
                    @all_cards.push(card)
                end
            end
        end
    end

    
    # def get_card(user_input_card)
    # end
    
    
end