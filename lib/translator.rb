# require modules here
require "yaml"
require 'pry'

# Method loads emoticons.yml file and returns HoH 
def load_library(library)
  emoticon1 = YAML.load_file(library)
  final_results = emoticon1.each_with_object({}) do |(k,v), a|
    a[k] = {:english => v[0], :japanese => v[1]}
  end
  final_results
end

#     a[k.to_sym] = {:english => v[0], :japanese => v[1]}

pp load_library("./lib/emoticons.yml")

# Method takes Western emoticon and returns Japanese emoticon
def get_japanese_emoticon(library, emoticon)
  hash = load_library(library)
  result = hash.select do |k,v|
    v[:english] == emoticon
  end
  result[result.keys][:japanese]
end

pp get_japanese_emoticon("./lib/emoticons.yml", ":)")


# Method takes Japanese emoticon and returns name in English
def get_english_meaning(library, emoticon)
  hash <- load_library(library)
  
end