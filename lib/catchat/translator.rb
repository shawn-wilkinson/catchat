require_relative 'dictionary'

class Translator

  @@dictionary = DICTIONARY

  ###Human To Cat
  def self.catify_letter(letter)
    return @@dictionary[letter]
  end

  def self.catify_word(word)
    word.split('').map{|l| Translator.catify_letter(l)}.join(' ')
  end

  def self.catify_passage(passage)
    passage.downcase.split(' ').map{|w| Translator.catify_word(w)}.join('  ')
  end

  ###Cat To Human
  def self.humanize_letter(letter)
    return @@dictionary.key(letter)
  end

  def self.humanize_word(word)
    word.split(' ').map{|l| Translator.humanize_letter(l)}.join('')
  end

  def self.humanize_passage(passage)
    passage.downcase.split('  ').map{|w| Translator.humanize_word(w)}.join(' ')
  end

end