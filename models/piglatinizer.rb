class PigLatinizer
  def piglatinize(word)
    if /[aeiou]/ =~ word.slice(0).downcase
      word << "way"
    else
      word.slice(/[aeiou]/ =~ word, word.length - 1) + word.slice(0, /[aeiou]/ =~ word) + "ay"
    end
  end

  def to_pig_latin(text)
    text = text.split(" ").map do |word|
      piglatinize(word)
    end
    text.join(" ")
  end
end
