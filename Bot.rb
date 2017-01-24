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

# <3 - Kingy

bot.command(:game, description: 'DESCRIPTION HERE') do |event, *game|
    unless event.user.id == YOUR_ID
           event.respond("TEXT FOR NOT MATCHING ID HERE")
                break
              end
            event.bot.game = game.join(' ')
            event.respond("MESSAGE WHEN IT WORKS, GAME TITLE = `#{game.join(' ')}`")
end

bot.run
