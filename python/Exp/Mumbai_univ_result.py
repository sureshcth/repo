import urllib2
import time
import tweepy
import os
consumer_key = ''
consumer_secret = ''
access_token = ''
access_secret = ''
tweet_string = 'twitter set @dhruvbaldawa Result for %s %s declared.'
url = 'http://results.mu.ac.in/choose_nob.php?exam_id=%s&exam_year=2012&exam_month=MAY'
auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_secret)
t = tweepy.API(auth)
id_start = 2765
id_ = id_start
while True:
    url_socket = urllib2.urlopen(url % id_)
    temp = url_socket.read().lower()
    if temp.find('no such exam!!') < 0:
        if temp.find('computer') > 0:
            print(tweet_string % (id_, True))
            # os.system(tweet_string % (id_, True))
            os.system("vlc ~/01.mp3")
        else:
            print(tweet_string % (id_, False))
            # os.system(tweet_string % (id_, False))
        id_ += 1
    else:
        time.sleep(300)
