require 'json'

file = File.read('./data/nytimes.json')
hash = JSON.parse(file)