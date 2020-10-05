class PigLatinizer
  
def piglatinize(input)
      if input.split(" ").length == 1
        #word method
        output = piglatinize_word(input)
      else
        #sentence method
        output = piglatinize_sentence(input)
      end
      puts output
      output
  end

  ### HELPER METHODS ###
  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    # word starts with vowel
    if !consonant?(word[0])
      word = word + "w"
    # word starts with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end
end



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
