require 'pry'

class Story 
  attr_reader :section, :subsection, :title, :abstract, :link, :published, :photo
  def initialize(parsed_json)
    @parsed_json = parsed_json
  end

  def section

    @parsed_json["section"]
  end

  def subsection
    @parsed_json["subsection"]
  end

  def title
    @parsed_json["title"]
  end

  def abstract
    @parsed_json["abstract"]
  end

  def link
    @parsed_json["link"]
  end

  def published
    @parsed_json["published"]
  end

  def photo
    @parsed_json["multimedia"].map do |media_type|
      if media_type["format"] == "Normal"
        media_type["url"]
      end
    end.join
  end

end

#section - String

#subsection - String

#title - String - text containing the string of the story

#abstract - String - summary of the story

#link - String - URL of where the story is located

#published - String - Date that the story was published. Example format: "November 29, 2019"

#photo - String - URL of the normal sized photo if one exists. Otherwise it should be the string, "No Photo Available".
