#coding: utf-8
require 'rubygems'
require 'twitter'

CONSUMER_KEY        = "**************************"
CONSUMER_SECRET     = "**************************"
ACCESS_TOKEN        = "**************************"
ACCESS_TOKEN_SECRET = "**************************"

#今の時間をツイートする
@cli = Twitter::REST::Client.new do |config|
  config.consumer_key        = CONSUMER_KEY
  config.consumer_secret     = CONSUMER_SECRET
  config.access_token        = ACCESS_TOKEN
  config.access_token_secret = ACCESS_TOKEN_SECRET
end
def tweet_time
  @cli.update("hello #{Time.now} #eeic_botthon")
end