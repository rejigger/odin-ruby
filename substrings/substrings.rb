dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(find, dictionary)
    list=Hash.new
    dictionary.each do |word|
        if find.downcase.scan(word).count > 0
            list[word] = find.downcase.scan(word).count
        end
    end
    return list
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)

#5:15 jgilberts
