require 'bundler' #makes sure everything in gemfile is installed
Bundler.require #require all gems listed in the gemfile
require 'open-uri'
require 'json'
require 'openssl'
require 'colorize'



#requiring files that lives in the same repo folder / files can 'talk' to eachother.
require_relative "./lib/api"
require_relative "./lib/cli"
require_relative "./lib/card"
require_relative "./lib/set.rb"
