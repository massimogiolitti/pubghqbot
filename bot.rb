require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'NDI3NDEyODQwMTEwODgyODE2.DZkf3g.GRk4nEIyykDklOxSzSnOYeuwKrQ', application_id: 427412840110882816, prefix: '!'


bot.command(:play_mp3) do |event|
	voice_bot = event.voice
	voice_bot.play_file('data/music.mp3')
end
bot.run