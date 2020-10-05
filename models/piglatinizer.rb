class PigLatinizer
  

def piglatinize(string)
    string.split.map { |s| piglatinize_word(s)}.join(' ')
  end

  def piglatinize_word(word)
    if vowel?(word[0])
      return word + "way"
    else
      newstr = word.split('')
      counter = 0
      until counter > word.length
        if vowel?(word[counter])
          return newstr.join + "ay"
          break
        else
          newstr.shift
          newstr << word[counter]
        end
        counter+=1
      end
    end
  end

  def vowel?(letter)
    ['a','e','i','o','u'].include?(letter.downcase)
  end

end
