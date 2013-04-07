require 'torquebox-stomp'
class StompController < ApplicationController

	def initialize()
		@testmessages={}
	end

	def on_subscribe(subscriber)
		@testmessages[subscriber.destination] ||=[]
		@testmessages[subscriber.destination] << subscriber
	end

	def on_unsubscribe(subcriber)
		(@testmessages[subscriber.destination] || []).delete(subscriber)
	end

	def on_message(message,session)
		( @testmessages[ message.destination ] || [] ).each do |subscriber|
      subscriber.send( message )
    end
    puts message
end
  end


