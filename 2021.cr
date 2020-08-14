# https://7g.click/

abstract class Lyric
  class_getter content : String = ""

  def self.say
    `espeak "#{content}"`
  end
end

macro lyric(content)
  class {{content.gsub(/,|'/, "") .split.map { |s| s[0..0].upcase + s[1..256].downcase } .join("") .id}} < Lyric
    class_getter content : String = {{content}}
  end
end

lyric "Twenty twenty one"
lyric "Sunshine on a kick drum"
lyric "Kick, kick drum"
lyric "Everything you do, it's been done done done before"
lyric "Everything you say, yeah you said that yesterday"

9.times do
  TwentyTwentyOne.say
  SunshineOnAKickDrum.say
  KickKickDrum.say
end

12.times do
  EverythingYouDoItsBeenDoneDoneDoneBefore.say
  EverythingYouSayYeahYouSaidThatYesterday.say
end
