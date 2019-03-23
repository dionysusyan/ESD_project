from twx.botapi import TelegramBot, ReplyKeyboardMarkup

bot = TelegramBot('706256156:AAFjCPB4IsmMxrh8u6GheEzAbNldb9Znhuo')
bot.update_bot_info().wait()

user_id = int(134937112)

result = bot.send_message(user_id, 'test message body').wait()
#https://github.com/datamachine/twx.botapi
