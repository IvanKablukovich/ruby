class Lexicon

  def initialize

    @words = %w[north south east west down up left right back]
    @verbs = %w[go stop kill eat]
    @stop_words = %w[the in of from at it]
    @nouns = %w[door bear princess cabinet]
    @numbers = "[0-9]"

  end

  def scan(text)

    sentence = []
    words = text.split

    words.each do |word|  word_d = word.downcase
      if @words.include? word_d
        sentence.push(["direction", word])
      elsif @verbs.include? word_d
        sentence.push(["verb", word])
      elsif @stop_words.include? word_d
        sentence.push(["stop", word])
      elsif @nouns.include? word_d
        sentence.push(["noun", word])
      elsif word.match(@numbers)
        sentence.push(["number", word.to_i])
      else
        sentence.push(["error", word])
      end
   end

   sentence
end
end
#text = Lexicon.new()
#text.scan($stdin.gets.chomp)
