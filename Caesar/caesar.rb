#Take input
#ASCII Letters: 65-90 97-122
require rubocop

def isalpha?(text)
    if text.between?(65,90) || text.between?(97,122)
        return true
    end
    return false
end

def caesar_cipher(text, shift)
    coded_text = Array.new
    text.each_byte do |i|
        #Determines if original character is a-z or A-Z
        if isalpha?(i)
            new_text = i + shift
            if new_text.between?(91,96)
                coded_text << ((new_text + -91) + 65).chr
            elsif new_text > 122
                coded_text << ((new_text + -122) + 96).chr
            else
                coded_text << new_text.chr
            end
        else
            coded_text << i.chr
        end
    end
    coded_text.each {|j| print j}
end

caesar_cipher("What a String! ", 5)

