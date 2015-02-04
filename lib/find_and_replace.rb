class String
    define_method(:find_and_replace) do |to_replace, replace_with|
    
    # store self in variable to parse
    sentence = self 
    
    # search through string for to_replace and replace with replace_with 
    sentence.gsub!(to_replace, replace_with)
    
    # search through string for making sure to catch capitalized differences without changing final return 
    sentence.gsub!(to_replace.capitalize, replace_with.capitalize)
    
    # return string with substitutions 
    return sentence  

    end 
end 
