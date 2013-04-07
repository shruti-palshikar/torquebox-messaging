require 'torquebox-stomplet'
class Stomplet
	def initialize
		super
	end

	def configure(stomplet_config)
		super
	end

	def on_message(stomp_message, session)
       @subscribers.each do |subscriber|
       subscriber.send( stomp_message )
    end

	end