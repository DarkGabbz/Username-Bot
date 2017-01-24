require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'TOKEN HERE', client_id: CLIENT ID HERE, prefix: 'cxd-'


bot.command(:ping, help_available: false) do |event|
  event << 'pong!'
end

bot.command(:exit, help_available: false) do |event|
  break unless event.user.id == YOUR ID HERE

  bot.send_message(event.channel.id, 'Goodbye!')
  exit
end

#commands
#Respond and pm commands

bot.command(:source) do |event|
  event.respond ('https://github.com/Calafska/CXD-Bot')
end

bot.command(:xtheman166) do |event|
  event.respond ('https://github.com/Xtheman166')
end

bot.command(:calafska) do |event|
  event.respond ('https://github.com/Calafska')
end

bot.run
