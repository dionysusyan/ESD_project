import twitter
import tweepy

consumer='WXCF5xSGTusqYC0C56yM3Hm82'
consumer_secret='MaU07zBQklzyvbYm116S1uSYRC7XzhgDuox23Qd7iHwPQibnNr'
access_token='552268285-AuFdsTZloiDKhWLO5W3CjBZyahI0XEyxtR8SBrAT'
access_token_secret='BzLRBbKUTcQ0b7IOZQoHkV7oNi2f8V39s8ZB43U8yDTIU'
auth = tweepy.OAuthHandler(consumer, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth)

api.update_status(status ="Hi discount hunters! Movietigo is offering 50% off all movie timings today! Book your tickets before theyre gone!")
