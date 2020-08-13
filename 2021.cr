abstract class Lyric
  class_getter content : String = ""

  def self.say
    `espeak "#{content}"`
  end
end

class TwentyTwentyOne < Lyric
  class_getter content : String = "Twenty twenty one"
end

class Sunshine < Lyric
  class_getter content : String = "Sunshine on a kick drum"
end

class Drum < Lyric
  class_getter content : String = "Kick, kick drum"
end

class DoneBefore < Lyric
  class_getter content : String = "Everything you do, it's been done done done before"
end

class DidThatYesterday < Lyric
  class_getter content : String = "Everything you say, yeah you said that yesterday"
end

9.times do
  TwentyTwentyOne.say
  Sunshine.say
  Drum.say
end

12.times do
  DoneBefore.say
  DidThatYesterday.say
end
