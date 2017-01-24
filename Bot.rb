require 'discordrb'

bot = Discordrb::Bot.new token: 'TOKEN HERE', client_id: 'CLIENT ID HERE'


bot.command (:ping, help_available: false) do |event|
  event << 'pong!'
end

bot.command (:exit, help_available: false) do |event|
  bot.send_message(event.channel.id, 'Goodbye!')
  exit
end

#commands

bot.command (:source) do |event|
  event.respond ('https://github.com/Calafska/CX-Bot')
end

bot.run 
