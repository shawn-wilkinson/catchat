require_relative "catchat/translator"

class Cat

  def self.meow
    "MEEEOW!"
  end

  def self.catify(passage)
    Translator.catify_passage(passage)
  end

  def self.humanize(passage)
    Translator.humanize_passage(passage)
  end

end


