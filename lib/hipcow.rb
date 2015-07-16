require 'hipchat-api'
require 'ruby_cowsay'

class Hipcow
  def initialize(api_key, cow = 'default', notify = 0, name = 'Hipcow', color = 'random')
    @hipchat_client = HipChat::API.new(api_key)
    @cow = Cow.new({cow: cow})
    @notify = notify
    @name = name
    @color = color
  end

  def get_rooms
    @hipchat_client.rooms_list
  end

  def say(room_id, message)
    cow_text = @cow.say(message)
    cow_html = '<pre style="font-size: 18px;margin-left: 40px;display: block;font-family: monospace;white-space: pre;margin: 1em 0px;">' +
      cow_text +'</pre>'
    @hipchat_client.rooms_message(room_id, @name, cow_html, notify = @notify, color = @color, message_format = 'html')
  end
end
