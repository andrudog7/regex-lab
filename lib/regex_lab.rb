def starts_with_a_vowel?(word)
    if word.downcase.match(/\A[aeiou]/) != nil
        true
    else false 
    end
end

def words_starting_with_un_and_ending_with_ing(text)
    new_text_array = []
    original_string = text.split(" ")
    original_string.each do |word|
      if word.match(/(^un)|(ing$)/)
        new_text_array.push(word)
      end
    end
    return new_text_array
end

def words_five_letters_long(text)
    new_text_array = []
    original_text = text.split(" ")
    original_text.each do |word|
        if word.downcase.match(/^[a-z]{5}$/)
            new_text_array << word
        end
    end
    new_text_array
end

def first_word_capitalized_and_ends_with_punctuation?(text)
   if text.match(/^[A-Z]/) && text.match(/[ _.,!"']$/)
        true
    else false 
    end
end

def valid_phone_number?(phone)
    if phone.match(/\(?\d{3}\)?[-.\s]?\d{3}[-.\s]?\d{4}/)
    return true
    else false
    end
end
