require 'yaml'# require modules here

def load_library(filepath)

  file = YAML.load_file('/Users/jaspercurry/Development/code/emoticon-translator-web-0716/lib/emoticons.yml')
    
  hash = {}
  hash["get_meaning"] = {}
  hash["get_emoticon"] = {}

  file.each do |k, v|
    hash["get_meaning"][v[1]] = k
    hash["get_emoticon"][v[0]] = v[1]
  end
hash
end

def get_japanese_emoticon(yam, emoticon)
  hash = load_library(yam)
  if hash["get_emoticon"][emoticon] == nil 
    return "Sorry, that emoticon was not found"
  else 
    hash["get_emoticon"][emoticon]
  end
end

def get_english_meaning(yam, emoticon)
  hash = load_library(yam)
    if hash["get_meaning"][emoticon] == nil
      return "Sorry, that emoticon was not found"
    else
      hash["get_meaning"][emoticon]
    end
end