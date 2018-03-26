require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'NDI3NDEyODQwMTEwODgyODE2.DZqFBA.cm6skoMRN7kp20HzIunGCQ7-Of8', application_id: 427412840110882816, prefix: '!'


#all methods will be merged into one eventually.

bot.command(:gayboy_fkdem) do |event|
	channel = event.user.voice_channel

  # Here we return from the command unless the channel is not nil (i. e. the user is in a voice channel). The `next`
  # construct can be used to exit a command prematurely, and even send a message while we're at it.
  next "fuck off" unless channel

  # The `voice_connect` method does everything necessary for the bot to connect to a voice channel. Afterwards the bot
  # will be connected and ready to play stuff back.
  bot.voice_connect(channel)
	voice_bot = event.voice
	voice_bot.play_file('/Users/massimogiolitti/desktop/pubg/data/oh_fkd_em.mp3')
	voice_bot.destroy; nil
end

bot.command(:gayboy_lucky_boy) do |event|
	channel = event.user.voice_channel
  next "fuck off" unless channel
  bot.voice_connect(channel)
	voice_bot = event.voice
	voice_bot.play_file('/Users/massimogiolitti/desktop/pubg/data/lucky_boy.mp3')
	voice_bot.destroy; nil
end

bot.command(:gayboy_fkn_teammate) do |event|
	channel = event.user.voice_channel
  next "fuck off" unless channel
  bot.voice_connect(channel)
	voice_bot = event.voice
	voice_bot.play_file('/Users/massimogiolitti/desktop/pubg/data/fkn_teammate.mp3')
	voice_bot.destroy; nil
end
bot.run