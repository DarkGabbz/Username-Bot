require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'TOKEN HERE', client_id: CLIENT ID HERE, prefix: '69'

#Commands

#To make sure the bot is online,

bot.command(:ping) do |event|
  event << 'pong!'
end

#Changes what the bot is playing (<3 Kingy)

bot.command(:game, description: 'Changes the game played by the bot. BOT OWNER ONLY') do |event, *game|
    unless event.user.id == 252202288821567498 #Change this to your ID
           event.respond("You're not the bot owner!")
                break
              end
            event.bot.game = game.join(' ')
            event.respond("Game set to `#{game.join(' ')}`")
end

#Kill the bot, BOT OWNER ONLY

bot.command(:exit, help_available: false) do |event|
  break unless event.user.id == 272738271862325249 #Change this to your ID
  #Doesn't accept other users
  
  bot.send_message(event.channel.id, 'Goodbye!')
  exit
end

#Respond and pm commands

bot.command(:source) do |event|
  event.respond ('https://github.com/Calafska/CXD-Bot')
end

#Creator commands

bot.command(:xtheman166) do |event|
  event.respond ('https://github.com/Xtheman166')
end

bot.command(:calafska) do |event|
  event.respond ('https://github.com/Calafska')
end

bot.run





#x was here
