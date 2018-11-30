require 'json'
require 'pry'
require './lib/story'

file = File.read('./data/nytimes.json')
parsed_json = JSON.parse(file)
@hash = parsed_json["results"]

def stories
  collected_stories = []
  @hash.each do |story|
    collected_stories << Story.new(story)
  end
  collected_stories
end



