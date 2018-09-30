class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each{|line| puts line }
  end
end

  happy_bday = Song.new(["Happy birthday to you",
    "I don't want to get sued",
    "So I'll stop right there"])

  bulls_on_parade = Song.new(["They rally around tha family", "With pockets full of shells"])

  happy_bday.sing_me_a_song()

  bulls_on_parade.sing_me_a_song()


#Study drills

#1.
tiana_major9 = Song.new(["Mr Mysterious, has got me so serious",
"Now I’m delirious",
"I try and try to just move on",
"But all I do is play this song"])

tiana_major9.sing_me_a_song()

jamiroquai = Song.new(["What's the answer?",
"I wish I knew",
"To our problems",
"I think we've gone too high"])

jamiroquai.sing_me_a_song()

#2.
kaytranada_lyrics = ["I want you to want me",
"But you just wanna love me for the day",
"And I can't just walk away",
"Even though I know you're trouble, babe"]

kaytranada = Song.new(kaytranada_lyrics)
kaytranada.sing_me_a_song()

#3 Testing with a nested array of lyrics

multi_lyrics = [["I want you to want me",
"But you just wanna love me for the day",
"And I can't just walk away",
"Even though I know you're trouble, babe"],
["What's the answer?",
"I wish I knew",
"To our problems",
"I think we've gone too high"],
["Mr Mysterious, has got me so serious",
"Now I’m delirious",
"I try and try to just move on",
"But all I do is play this song"]]

lyrics = Song.new(multi_lyrics)
lyrics.sing_me_a_song()
