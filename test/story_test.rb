require './test/test_helper'
require './lib/story.rb'

class StoryTest < Minitest::Test 

  def setup
    file = File.read('./data/nytimes.json')
    parsed_json = JSON.parse(file)
    @hash = parsed_json["results"]
  end

  def test_it_exists
    story = Story.new
    assert_instance_of Story, story
  end

  def test_it_has_data
    binding.pry
    @hash
  end
end