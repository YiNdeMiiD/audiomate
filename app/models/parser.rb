class Parser

  require 'open-uri'
  require 'mechanize'

  def self.vk_auth
    agent = Mechanize.new
    login_form = agent.get('http://vkontakte.ru').forms[0]
    login_form.email = ENV[ 'VK_LOGIN' ]
    login_form.pass  = ENV[ 'VK_PASS' ]
    agent.submit( agent.submit(login_form, login_form.buttons.first).forms.first )
  end

  def self.vk
    agent = vk_auth
    doc = agent.get( "https://vk.com/audios80676137?q=Moby" )
  end
  

end
