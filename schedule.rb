require 'rubygems'
require './tweet.rb'
require 'clockwork'
include Clockwork

every(10.seconds, 'frequent_job') do
	tweet_time
end
