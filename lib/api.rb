class API

    def self.run

        url = URI("https://omgvamp-hearthstone-v1.p.rapidapi.com/cards")

        # response = Net::HTTP.get(uri) #'gets' info from a website.
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-key"] = ENV["HEARTHSTONE_KEY"]
        request["x-rapidapi-host"] = 'omgvamp-hearthstone-v1.p.rapidapi.com'

        response = http.request(request)
        # puts response.read_body
        hash = JSON.parse(response.read_body) #turns string into JSON. "hash" {...} 
    end
end