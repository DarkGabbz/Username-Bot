require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'TOKEN HERE', client_id: CLIENT ID HERE, prefix: 'cxd-'


bot.command(:ping) do |event|
  event << 'pong!'
end

bot.command(:game, description: 'Changes the game played by the bot. BOT OWNER ONLY') do |event, *game|
    unless event.user.id == YOUR_ID
           event.respond("You're not the bot owner!")
                break
              end
            event.bot.game = game.join(' ')
            event.respond("Game set to `#{game.join(' ')}`")
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
