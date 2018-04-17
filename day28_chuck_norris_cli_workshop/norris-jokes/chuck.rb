# response = HTTParty.get('https://api.icndb.com')
require "HTTParty"

class ChuckJokes
    response = HTTParty.get("https://api.icndb.com/jokes")
    
    def help
        puts "Yolo everyone!"
    end
    joke_id
    def get_joke_by_id(id)
        
    end

    def replace_name(name)

    end

    def random

    end   
end

