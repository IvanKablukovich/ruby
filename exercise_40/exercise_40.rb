class Song

  def initialize (lyrics)
    @lyrics = lyrics
  end

  def sing_song()
    @lyrics.each {|line| puts line}
  end
end

class TwoSong < Song

end


my = ["haha", "ahah"]
my_haha = Song.new(my)

double = TwoSong.new(my)

happy_birth = Song.new(["Happy birthday to you",
                        "I don't want to get sued",
                        "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family", "With pockets full of shells"])

my_haha.sing_song()

double.sing_song()

happy_birth.sing_song()

bulls_on_parade.sing_song()
