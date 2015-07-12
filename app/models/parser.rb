class Parser

  require 'open-uri'
  require 'nokogiri'

  def self.vk
    doc = Nokogiri::HTML(open("https://vk.com/audios191733152?q=moby"))
    audio_wrapper_class = '.play_btn fl_l'
    tracks = doc.css( audio_wrapper_class )
    tracks
  end
  

end
