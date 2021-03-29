<h1>Hearthstone CLI<h1>

 <p> Welcome to the Hearthstone CLI!

This CLI acts as an info booth to get information on any of the 12000+ cards in the game "Hearthstone". The game is free to play, and can be downloaded on PC, IOS, and Android devices!

When you run the program, it will display a list of card sets that were released from the game over time.

 </p>

<h2>Installation<h2>

<p> In order for you to use the API, you will need an API Key. you can create an account at <a href= https://rapidapi.com/omgvamp/api/hearthstone?endpoint=5525c47de4b0b69ffe83f7bd </a> to  have access to an API key. </p>

<p> You can punch in the API key in the api.rb file </p>

<p> You can either replace ENV["HEARTHSTONE_KEY"], <code>request["x-rapidapi-key"] = ENV["HEARTHSTONE_KEY"]<code> or create a .env file to hide the api key yourself. </p>

<p> You will also need an to input in <code> 
gem 'json' 
gem 'net-http'  
gem 'colorize'<code> 
into your gemfile and then bundle install.

<h2>Usage<h2>

<p> Type <code> ruby bin/run <code> into the terminal to initiate the program.

The program will greet the user and then ask them to choose a card set.

A list of card sets will appear with indexes, and ask the user will be prompted to choose a number.

After, another list will display with all the cards in the chosen card set, and will ask for the user to input another number based off the card they want to view. </p>

<h2> Contributing <h2>

<p> Bug reports and pull requests are welcome on GitHub at <a href= https://github.com/Jwhitski/hearthstone-project </a>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the <a href= https://github.com/Jwhitski/hearthstone-project/blob/main/CODE_OF_CONDUCT.md>code of conduct</a>. </p>

<h2>License<h2>

<p> The gem is availabe as open source under the terms of the <a href= https://github.com/Jwhitski/hearthstone-project/blob/main/LICENSE>MIT License</a>. </p>
